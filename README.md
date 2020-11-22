# AACVP-MVSNet
The code of the paper **Attention Aware Cost Volume Pyramid Based Multi-view Stereo Network for 3D Reconstruction** (AACVP-MVSNet)。

---
## NOTE: the code would be open source as soons as it's accpeted.


## 0. Introduction

This project is inspired many previous MVS works, such as [MVSNet](https://github.com/xy-guo/MVSNet_pytorch) and [CVP-MVSNet](https://github.com/JiayuYANG/CVP-MVSNet). The **self-attention layer** and the **group wise correlation** are introduced in our network, aiming at improving the completeness and overall accuracy of 3D Reconstruction. This work is funded by National Natural Science Foundation of China (NSFC, No. 41801388).

<img src="https://github.com/ArthasMil/AACVP-MVSNet/blob/main/imgs/NetwordStructure.jpg" width="323" height="117" alt="The network structure of AACVP-MVSNet"/>

If you find this project useful for your research, please cite:
```
@article{yu2020aacvpmvsnet,
  title={Attention Aware Cost Volume Pyramid Based Multi-view Stereo Network for 3D Reconstruction},
  author={Yu, Anzhu and Guo, Wenyue and Liu, Bing and Chen Xin and Wang, Xin and Cao, Xuefeng and Jiang, Bingchuan},
  journal={arxiv},
  year={2020}
}
```
The best result of our model is listed below as well as some previous works.

| Methods | Acc. (mm) | Comp. (mm) | Overall (mm) |
|-----------|-----------|------------|--------------|
| [PruMVSNet](https://www.sciencedirect.com/science/article/abs/pii/S0924271620301763) | 0.495 | 0.433   |  0.464        |
| [PointMVSNet](https://github.com/callmeray/PointMVSNet) |  0.361 | 0.421 | 0.391 | 
| [MVSNet](https://github.com/xy-guo/MVSNet_pytorch) | 0.4492 | 0.3796 | 0.4144 | 
| [CasMVSNet](https://github.com/alibaba/cascade-stereo/tree/master/CasMVSNet) | 0.325 | 0.385 | 0.355 |
| [CVP-MVSNet](https://github.com/xy-guo/MVSNet_pytorch) | 0.296 | 0.406 | 0.351 | 
| Ours | 0.353     | 0.299      | 0.326        |

Some results on [BlendedMVS](https://github.com/YoYo000/BlendedMVS) dataset is listed below.

<img src="https://github.com/ArthasMil/AACVP-MVSNet/blob/main/imgs/BlendedMVS_1.jpg" width="162" height="96" alt="Scene 1"/>
<img src="https://github.com/ArthasMil/AACVP-MVSNet/blob/main/imgs/BlendedMVS_2.jpg" width="162" height="96" alt="Scene 2"/>
<img src="https://github.com/ArthasMil/AACVP-MVSNet/blob/main/imgs/BlendedMVS_3.jpg" width="162" height="96" alt="Scene 3"/>
<img src="https://github.com/ArthasMil/AACVP-MVSNet/blob/main/imgs/BlendedMVS_4.jpg" width="162" height="96" alt="Scene 4"/>

---

## 1. How to use

**Our experiment use the same dataset with [CVP-MVSNet](https://github.com/JiayuYANG/CVP-MVSNet), so the usage of this code stays the same with CVP-MVSNet.**
### 0. Pre-requisites

* Nvidia GPU with 11GB or more vRam.
* CUDA 10.1 or newer
* python3.7
* python2.7 for fusion script

*We only test our code under mentioned requirements.*

### 1. Clone the source code

`https://github.com/ArthasMil/AACVP-MVSNet.git`

### 2. Download testing dataset

Testing data(2G):

Download the pre-processed DTU testing data from [here](https://drive.google.com/file/d/1rX0EXlUL4prRxrRu2DgLJv2j7-tpUD4D/view?usp=sharing) and extract it to your own path.

### 3. Train the model

`bash train.sh`

### 4. Generate depth map using our pre-trained model

`bash eval.sh`

When finished, you can find depth maps in `outputs_pretrained` folder.

### 5. Generate point clouds and reproduce DTU results


Check out Yao Yao's modified version of fusibile

`git clone https://github.com/YoYo000/fusibile`

Install fusibile by `cmake .` and `make`, which will generate the executable at`FUSIBILE_EXE_PATH`

Link fusibile executable into fusion folder (Note: You should modify FUSIBILE_EXE_PATH to the path to your fusibile executable)

`ln -s FUSIBILE_EXE_PATH ./fusion/fusibile`

Install extra dependencies

`pip2 install -r ./fusion/requirements_fusion.txt`

Use provided script to use fusibile to generate point clouds. 

`cd ./fusion/`

`bash fusion.sh`

Move the *final3D* files to output folder

`python2 fusibile_to_dtu_eval.py`

Evaluate the point clouds using the [DTU evaluation code](http://roboimagedata.compute.dtu.dk/?page_id=36).
