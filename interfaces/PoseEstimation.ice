#ifndef POSEESTIMATION_ICE
#define POSEESTIMATION_ICE

module RoboCompPoseEstimation
{
  sequence<float> Joint;
  sequence<Joint> Skeleton3D;
  sequence<double> Joint2;
  sequence<Joint2> Skeleton2D;

  sequence<byte> ImageData;
  sequence<int> Shape;

  interface PoseEstimation
  {
    idempotent void getSkeleton(ImageData img, Shape shape, out Skeleton2D skeleton2d, out Skeleton3D skeleton3d);
  };
};

#endif

