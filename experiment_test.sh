#!\bin\bash
rm -rf test_data
mkdir test_data
python test.py -net googlenet -weights checkpoint/googlenet/Thursday_27_October_2022_14h_00m_49s/googlenet-35-best.pth > ./test_data/googlenet
echo "GoogleNet Done"
python test.py -net resnet34 -weights checkpoint/resnet34/Thursday_27_October_2022_13h_25m_47s/resnet34-38-best.pth > test_data/resnet34
echo "Resnet34 Done"
python test.py -net resnet18 -weights checkpoint/resnet18/Thursday_27_October_2022_13h_07m_31s/resnet18-34-best.pth > test_data/resnet18
echo "Resnet18 Done"
python test.py -net squeezenet -weights checkpoint/squeezenet/Thursday_27_October_2022_14h_30m_31s/squeezenet-35-best.pth > test_data/squeezenet
echo "squeezenet Done"
python test.py -net densenet121 -weights checkpoint/densenet121/Thursday_27_October_2022_14h_38m_22s/densenet121-35-best.pth > test_data/densenet121
echo "densenet121 Done"