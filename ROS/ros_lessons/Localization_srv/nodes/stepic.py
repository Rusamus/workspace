import torch
from abc import ABC, abstractmethod


def calc_out_shape(input_matrix_shape, out_channels, kernel_size, stride, padding):
    batch_size, channels_count, input_height, input_width = input_matrix_shape
    output_height = (input_height + 2 * padding - (kernel_size - 1) - 1) // stride + 1
    output_width = (input_width + 2 * padding - (kernel_size - 1) - 1) // stride + 1

    return batch_size, out_channels, output_height, output_width


class ABCConv2d(ABC):
    def __init__(self, in_channels, out_channels, kernel_size, stride):
        self.in_channels = in_channels
        self.out_channels = out_channels
        self.kernel_size = kernel_size
        self.stride = stride

    def set_kernel(self, kernel):
        self.kernel = kernel

    @abstractmethod
    def __call__(self, input_tensor):
        pass


class Conv2d(ABCConv2d):
    def __init__(self, in_channels, out_channels, kernel_size, stride):
        self.conv2d = torch.nn.Conv2d(in_channels, out_channels, kernel_size,
                                      stride, padding=0, bias=False)

    def set_kernel(self, kernel):
        self.conv2d.weight.data = kernel

    def __call__(self, input_tensor):
        return self.conv2d(input_tensor)


def create_and_call_conv2d_layer(conv2d_layer_class, stride, kernel, input_matrix):
    out_channels = kernel.shape[0]
    in_channels = kernel.shape[1]
    kernel_size = kernel.shape[2]

    layer = conv2d_layer_class(in_channels, out_channels, kernel_size, stride)
    layer.set_kernel(kernel)

    return layer(input_matrix)


def test_conv2d_layer(conv2d_layer_class, batch_size=2,
                      input_height=4, input_width=4, stride=2):
    kernel = torch.tensor(
                      [[[[0., 1, 0],
                         [1,  2, 1],
                         [0,  1, 0]],

                        [[1, 2, 1],
                         [0, 3, 3],
                         [0, 1, 10]],

                        [[10, 11, 12],
                         [13, 14, 15],
                         [16, 17, 18]]]])

    in_channels = kernel.shape[1]

    input_tensor = torch.arange(0, batch_size * in_channels *
                                input_height * input_width,
                                out=torch.FloatTensor()) \
        .reshape(batch_size, in_channels, input_height, input_width)

    custom_conv2d_out = create_and_call_conv2d_layer(
        conv2d_layer_class, stride, kernel, input_tensor)
    conv2d_out = create_and_call_conv2d_layer(
        Conv2d, stride, kernel, input_tensor)

    return torch.allclose(custom_conv2d_out, conv2d_out) \
             and (custom_conv2d_out.shape == conv2d_out.shape)


class Conv2dMatrix(ABCConv2d):
    # Функция преобразование кернела в матрицу нужного вида.
    def _unsqueeze_kernel(self, torch_input, output_height, output_width):
        delta = torch_input.shape[2]-self.kernel.shape[2]
        matrix_width = ((self.kernel.shape[2]**2) + delta*self.kernel.shape[2] + delta*torch_input.shape[2])*self.kernel.shape[1]
        matrix_height = ((torch_input.shape[2] -self.kernel.shape[2]) // self.stride + 1)*((torch_input.shape[3] -self.kernel.shape[3]) // self.stride + 1)
        out = torch.zeros([0, matrix_width])
        for n in range(self.kernel.shape[0]):#filters
            kernel_unsqueezed = torch.zeros([matrix_height,0])
            for k in range(self.kernel.shape[1]):#channel
            
                ker_temp = torch.zeros([matrix_height, matrix_width//self.kernel.shape[1]])
                for i in range((delta // self.stride + 1)**2):#row
                    boost = 0
                    past_it = 0
                    s = i//(delta // self.stride + 1) + i
                    for j in range(self.kernel.shape[2]):#column
                        ker_temp[i,past_it + boost+s: past_it + self.kernel.shape[2] + boost+s] = self.kernel[n,k,j,:] 
                        past_it = (j+1)*self.kernel.shape[2] + boost+s
                        boost = delta
     
                kernel_unsqueezed = torch.cat((kernel_unsqueezed, ker_temp), dim = 1 ) #concating of CHANNELS
            out = torch.cat((out, kernel_unsqueezed), dim = 0) #concating of FILTERS
        
        return out

    def __call__(self, torch_input):
        batch_size, out_channels, output_height, output_width\
            = calc_out_shape(
                input_matrix_shape=torch_input.shape,
                out_channels=self.kernel.shape[0],
                kernel_size=self.kernel.shape[2],
                stride=self.stride,
                padding=0)

        kernel_unsqueezed = self._unsqueeze_kernel(torch_input, output_height, output_width)
        result = kernel_unsqueezed @ torch_input.view((batch_size, -1)).permute(1, 0)
        return result.permute(1, 0).view((batch_size, self.out_channels,
                                          output_height, output_width))

# Проверка происходит автоматически вызовом следующего кода
# (раскомментируйте для самостоятельной проверки,
#  в коде для сдачи задания должно быть закомментировано):
# print(test_conv2d_layer(Conv2dMatrix))