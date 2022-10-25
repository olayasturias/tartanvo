#!/bin/bash
# python vo_trajectory_from_folder.py  --model-name tartanvo_1914.pkl \
#                                        --euroc \
#                                        --batch-size 1 --worker-num 1 \
#                                        --test-dir data/EuRoC_V1$track/image_left \
#                                        --pose-file data/EuRoC_V1$track/pose_left.txt
KITTI_tracks='00 01 02 03 04 05 06 07 08 09 10'
for track in $KITTI_tracks
do
    python vo_trajectory_from_folder.py  --model-name tartanvo_1914.pkl \
                                        --kitti \
                                        --track $track \
                                        --kitti-intrinsics-file /media/airlabsimulation/Acer/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/$track/calib.txt \
                                        --image-width 640 \
                                        --image-height 448 \
                                        --batch-size 1 --worker-num 1 \
                                        --test-dir /media/airlabsimulation/Acer/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/$track/image_2 \
                                        --pose-file /home/airlabsimulation/Olaya_data/SLAM_SOA/tartanvo/data/KITTI/$track.txt
                                    
done

echo All done