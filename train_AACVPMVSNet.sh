#!/usr/bin/env python
# Shell script for training the AACVP-MVSNet
# Modified by: B. Liu
# date: 2020-08-13
# Dataset
DATASET_ROOT="./datasets/dataset/dtu-train-128/"

python train_AACVPMVSNet.py --info="train_dtu_128_GWC" --mode="train" --groups=4 --num_heads=1 \
--dataset_root=$DATASET_ROOT \
--imgsize=128 \
--nsrc=5 \
--nscale=2 \
--batch_size=28 \
--loadckpt='' \
--resume=1 \

/