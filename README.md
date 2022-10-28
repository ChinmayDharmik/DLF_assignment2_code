# DLF_assignment2_code
DLF_CNN_code

#### To train a model
```bash
python train.py -net <model_name> -gpu -b <batch-size> -lr <learning_rate> 
```

### To Test a model
```bash
python test.py -net <model> -weights path_to_vgg16_weights_file
```

To replicate the Experiment
```bash
bash ./experiment_train.sh
bash ./experiment_test.sh
```

To access Tensorboard
```bash
tensorboard --logdir='runs' --port=6006 --host='localhost'
```


