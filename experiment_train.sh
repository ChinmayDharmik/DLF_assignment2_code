#!/bin/env
rm -rf ./checkpoint ./output ./runs
mkdir -p ./output
#tensorboard --logdir='runs' --port=6006 --host='localhost' #to visualise the process
python ./train.py -gpu -net resnet18 -b 128 -lr 0.01 > ./output/resnet18_op
python ./train.py -gpu -net resnet34 -b 128 -lr 0.01 > ./output/resnet34_op
python ./train.py -gpu -net googlenet -b 128 -lr 0.01 > ./output/googlenet_op
python ./train.py -gpu -net squeezenet -b 128 -lr 0.01 > ./output/squeezenet_op
python ./train.py -gpu -net densenet121 -b 128 -lr 0.01 > ./output/densenet121_op