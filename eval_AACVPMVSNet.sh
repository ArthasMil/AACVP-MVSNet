# Shell script for evaluating the AACVP-MVSNet
# Modified by A.Yu

# Dataset
DATASET_ROOT=".YOUR PATHS"

# Checkpoint
LOAD_CKPT_DIR="YOUR PATHS TO CHECKPOITNS"
# Logging
LOG_DIR="./logs/"

# Output dir. You may want to change it here.
OUT_DIR="./outputs/"

python eval_AACVPMVSNet.py --mode="test" --dataset_root=$DATASET_ROOT \
--imgsize=1200 \
--nsrc=3 \
--nscale=5 \
--batch_size=1 \
--loadckpt=$LOAD_CKPT_DIR \
--logckptdir=$CKPT_DIR \
--loggingdir=$LOG_DIR \
--outdir=$OUT_DIR
