# python vo_trajectory_from_folder.py  --model-name tartanvo_1914.pkl \
#                                        --euroc \
#                                        --batch-size 1 --worker-num 1 \
#                                        --test-dir data/EuRoC_V110/image_left \
#                                        --pose-file data/EuRoC_V110/pose_left.txt
python vo_trajectory_from_folder.py  --model-name tartanvo_1914.pkl \
                                       --kitti \
                                       --kitti-intrinsics-file /media/airlabsimulation/Acer/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/10/calib.txt \
                                       --image-width 640 \
                                       --image-height 448 \
                                       --batch-size 1 --worker-num 1 \
                                       --test-dir /media/airlabsimulation/Acer/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/10/image_2 \
                                       --pose-file /home/airlabsimulation/Olaya_data/SLAM_SOA/tartanvo/data/KITTI/10.txt