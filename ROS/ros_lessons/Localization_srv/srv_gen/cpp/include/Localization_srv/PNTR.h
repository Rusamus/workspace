/* Auto-generated by genmsg_cpp for file /home/musaev_rv/workspace/ROS/ros_lessons/Localization_srv/srv/PNTR.srv */
#ifndef LOCALIZATION_SRV_SERVICE_PNTR_H
#define LOCALIZATION_SRV_SERVICE_PNTR_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace Localization_srv
{
template <class ContainerAllocator>
struct PNTRRequest_ {
  typedef PNTRRequest_<ContainerAllocator> Type;

  PNTRRequest_()
  : time_stamp()
  , rgb_query()
  , depth_query()
  {
  }

  PNTRRequest_(const ContainerAllocator& _alloc)
  : time_stamp()
  , rgb_query(_alloc)
  , depth_query(_alloc)
  {
  }

  typedef ros::Time _time_stamp_type;
  ros::Time time_stamp;

  typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _rgb_query_type;
  std::vector<double, typename ContainerAllocator::template rebind<double>::other >  rgb_query;

  typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _depth_query_type;
  std::vector<double, typename ContainerAllocator::template rebind<double>::other >  depth_query;


  typedef boost::shared_ptr< ::Localization_srv::PNTRRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Localization_srv::PNTRRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct PNTRRequest
typedef  ::Localization_srv::PNTRRequest_<std::allocator<void> > PNTRRequest;

typedef boost::shared_ptr< ::Localization_srv::PNTRRequest> PNTRRequestPtr;
typedef boost::shared_ptr< ::Localization_srv::PNTRRequest const> PNTRRequestConstPtr;



template <class ContainerAllocator>
struct PNTRResponse_ {
  typedef PNTRResponse_<ContainerAllocator> Type;

  PNTRResponse_()
  : state()
  {
    state.assign(0.0);
  }

  PNTRResponse_(const ContainerAllocator& _alloc)
  : state()
  {
    state.assign(0.0);
  }

  typedef boost::array<double, 6>  _state_type;
  boost::array<double, 6>  state;


  typedef boost::shared_ptr< ::Localization_srv::PNTRResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Localization_srv::PNTRResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct PNTRResponse
typedef  ::Localization_srv::PNTRResponse_<std::allocator<void> > PNTRResponse;

typedef boost::shared_ptr< ::Localization_srv::PNTRResponse> PNTRResponsePtr;
typedef boost::shared_ptr< ::Localization_srv::PNTRResponse const> PNTRResponseConstPtr;


struct PNTR
{

typedef PNTRRequest Request;
typedef PNTRResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct PNTR
} // namespace Localization_srv

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Localization_srv::PNTRRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Localization_srv::PNTRRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Localization_srv::PNTRRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "0f20472e08bde5cd4c6d19b0d89f3cda";
  }

  static const char* value(const  ::Localization_srv::PNTRRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x0f20472e08bde5cdULL;
  static const uint64_t static_value2 = 0x4c6d19b0d89f3cdaULL;
};

template<class ContainerAllocator>
struct DataType< ::Localization_srv::PNTRRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Localization_srv/PNTRRequest";
  }

  static const char* value(const  ::Localization_srv::PNTRRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Localization_srv::PNTRRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "time time_stamp\n\
float64[] rgb_query\n\
float64[] depth_query\n\
\n\
";
  }

  static const char* value(const  ::Localization_srv::PNTRRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Localization_srv::PNTRResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Localization_srv::PNTRResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Localization_srv::PNTRResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "8ce282c4e012701c85e6ebf3255dfc96";
  }

  static const char* value(const  ::Localization_srv::PNTRResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x8ce282c4e012701cULL;
  static const uint64_t static_value2 = 0x85e6ebf3255dfc96ULL;
};

template<class ContainerAllocator>
struct DataType< ::Localization_srv::PNTRResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Localization_srv/PNTRResponse";
  }

  static const char* value(const  ::Localization_srv::PNTRResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Localization_srv::PNTRResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
float64[6] state\n\
\n\
\n\
";
  }

  static const char* value(const  ::Localization_srv::PNTRResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::Localization_srv::PNTRResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Localization_srv::PNTRRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.time_stamp);
    stream.next(m.rgb_query);
    stream.next(m.depth_query);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct PNTRRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Localization_srv::PNTRResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.state);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct PNTRResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<Localization_srv::PNTR> {
  static const char* value() 
  {
    return "ab14549b64f35f7bb5d487133904e36e";
  }

  static const char* value(const Localization_srv::PNTR&) { return value(); } 
};

template<>
struct DataType<Localization_srv::PNTR> {
  static const char* value() 
  {
    return "Localization_srv/PNTR";
  }

  static const char* value(const Localization_srv::PNTR&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<Localization_srv::PNTRRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ab14549b64f35f7bb5d487133904e36e";
  }

  static const char* value(const Localization_srv::PNTRRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<Localization_srv::PNTRRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Localization_srv/PNTR";
  }

  static const char* value(const Localization_srv::PNTRRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<Localization_srv::PNTRResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ab14549b64f35f7bb5d487133904e36e";
  }

  static const char* value(const Localization_srv::PNTRResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<Localization_srv::PNTRResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Localization_srv/PNTR";
  }

  static const char* value(const Localization_srv::PNTRResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // LOCALIZATION_SRV_SERVICE_PNTR_H

