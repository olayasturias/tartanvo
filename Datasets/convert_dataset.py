from transformation import kitti2tartan

import argparse
import numpy as np
import cv2
from os import mkdir
from os.path import isdir

def get_args():
    parser = argparse.ArgumentParser(description='HRL')


    parser.add_argument('--euroc', action='store_true', default=False,
                        help='euroc test (default: False)')
    parser.add_argument('--kitti', action='store_true', default=False,
                        help='kitti test (default: False)')
    parser.add_argument('--kitti-intrinsics-file',  default='',
                        help='kitti intrinsics file calib.txt (default: )')

    parser.add_argument('--pose-file', default='',
                        help='test trajectory gt pose file, used for scale calculation, and visualization (default: "")')
    parser.add_argument('--out-file', default='',
                        help='test trajectory folder where the RGB images are (default: "")')
    args = parser.parse_args()

    return args


if __name__ == '__main__':
    args = get_args()

    if args.kitti:
        print('converting KITTI to tartanair format')
        kittiposes = np.loadtxt(args.pose_file, dtype="U", delimiter=" ")
        print(kittiposes.shape)
        tartanposes = kitti2tartan(kittiposes)
        np.savetxt(args.out_file,tartanposes)
    elif args.euroc:
        print('converting EUROC to tartanair format')
        datastr = 'euroc'
    else:
        print('waddup')
