file(REMOVE_RECURSE
  "../srv_gen"
  "../srv_gen"
  "../src/Localization_srv/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
