project(
  OpenCV
  LANGUAGES CXX
  VERSION 4.7.0
  DESCRIPTION "OpenCV for computer vision"
  HOMEPAGE_URL "https://github.com/opencv/opencv.git"
)

set(${PROJECT_NAME}_GIT_TAG ${PROJECT_VERSION} CACHE STRING "OpenCV version")
set(${PROJECT_NAME}_PREFIX ${CMAKE_BINARY_DIR}/${PROJECT_NAME}-prefix CACHE STRING "OpenCV prefix")
set(${PROJECT_NAME}_INSTALL_PATH ${CMAKE_SOURCE_DIR}/thirdparty/install/${PROJECT_NAME}/${CMAKE_BUILD_TYPE} CACHE STRING "OpenCV install path")
set(${PROJECT_NAME}_CMAKE_PATH cmake/opencv4 CACHE STRING "OpenCV cmake path")
set(
  ${PROJECT_NAME}_CMAKE_ARGS
  -DCMAKE_INSTALL_PREFIX=${${PROJECT_NAME}_INSTALL_PATH}
  -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}

  # calib3d will be manually built
  -DBUILD_opencv_calib3d=OFF
  -DBUILD_LIST="imgproc, imgcodecs, core, features2d,\
                        flann, highgui, video, videoio"

  # unused modules
  -DBUILD_opencv_photo=OFF
  -DBUILD_opencv_ml=OFF
  -DBUILD_opencv_gapi=OFF
  -DBUILD_ZLIB=OFF

  # Eigen support
  -DWITH_EIGEN=ON
  -DEigen3_INCLUDE_DIR=${EIGEN3_INCLUDE_DIRS}

  # used libraries
  -DWITH_GTK=ON # for highgui

  # Build tests, samples and applications
  -DBUILD_TESTS=OFF
  -DBUILD_PERF_TESTS=OFF
  -DBUILD_EXAMPLES=OFF
  -DBUILD_opencv_apps=OFF
  -DOPENCV_GENERATE_PKGCONFIG=OFF

  # CPU optimization level
  -DCV_ENABLE_INTRINSICS=OFF
  -DCV_DISABLE_OPTIMIZATION=ON

  # CUDA support
  -WITH_CUDA=OFF

  # OpenCL support
  -WITH_OPENCL=OFF
  -WITH_OPENCLAMDFFT=OFF
  -WITH_OPENCLAMDBLAS=OFF

  # Built-in formats
  -WITH_IMGCODEC_HDR=OFF
  -WITH_IMGCODEC_SUNRASTER=OFF
  -WITH_IMGCODEC_PXM=OFF
  -WITH_IMGCODEC_PFM=OFF

  # PNG, JPEG, TIFF, WEBP support
  -WITH_TIFF=OFF
  -WITH_WEBP=OFF
  -WITH_OPENJPEG=OFF
  -WITH_JASPER=OFF
  -WITH_OPENEXR=OFF

  # other backends
  -WITH_ANDROID_MEDIANDK=OFF

  # for dnn module
  -WITH_PROTOBUF=OFF
  -DBUILD_PROTOBUF=OFF
  -DOPENCV_DNN_OPENCL=OFF

  # Miscellaneous features
  -DENABLE_PYLINT=OFF
  -DENABLE_FLAKE8=OFF
  -DBUILD_JAVA=OFF
  -DBUILD_FAT_JAVA_LIB=OFF
  -DBUILD_opencv_python2=OFF
  -DBUILD_opencv_python3=OFF

  # android
  -DBUILD_ANDROID_PROJECTS=OFF
  -DBUILD_ANDROID_EXAMPLES=OFF
  -DBUILD_KOTLIN_EXTENSIONS=OFF

  # other
  -DBUILD_opencv_gpu=OFF
  -WITH_CPUFEATURES=OFF # cpufeatures android library
  -WITH_NVCUVID=OFF # Include NVidia Video Decoding library support
  -HAVE_NVCUVID=OFF # Include NVidia Video Encoding library support
  -WITH_DIRECTX=OFF
  -WITH_QUIRC=OFF
  -WITH_FLATBUFFERS=OFF)
