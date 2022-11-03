euroc_tracks='EuRoC_V102'
for track in $euroc_tracks
do
    python vo_trajectory_from_folder.py  --model-name tartanvo_1914.pkl \
                                        --euroc \
                                        --track $track \
                                        --batch-size 1 --worker-num 1 \
                                        --test-dir data/$track/image_left \
                                        --pose-file data/$track/pose_left.txt
done