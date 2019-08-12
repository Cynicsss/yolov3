#!/usr/bin/env bash

cd data
hdfs dfs -get $PAI_DEFAULT_FS_URI/data/datasets/2019yolo.zip
unzip -q 2019yolo.zip
mv ./2019yolo ../../
cd ..
pip3 install tqdm

python3 train.py --data data/coco.data --num-workers 4