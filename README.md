# AACVP-MVSNet
The code of the paper **Attention Aware Cost Volume Pyramid Based Multi-view Stereo Network for 3D Reconstruction** (AACVP-MVSNet)。

---
## NOTE: the code would be open source as soons as it's accpeted.


## 0. Introduction

This project is inspired many previous MVS works, such as [MVSNet](https://github.com/xy-guo/MVSNet_pytorch) and [CVP-MVSNet](https://github.com/JiayuYANG/CVP-MVSNet). The **self-attention layer** and the **group wise correlation** are introduced in our network, aiming at improving the completeness and overall accuracy of 3D Reconstruction for UAV images. This work is funded by National Natural Science Foundation of China (NSFC, No. 41801388).

![The network structure of AACVP-MVSNet](https://github.com/ArthasMil/AACVP-MVSNet/blob/main/imgs/NetwordStructure.jpg)

If you find this project useful for your research, please cite:
```
@article{yu2020aacvpmvsnet,
  title={Attention Aware Cost Volume Pyramid Based Multi-view Stereo Network for 3D Reconstruction},
  author={Yu, Anzhu and Guo, Wenyue and Liu, Bing and Chenm Xin and Wang, Xin and Cao, Xuefeng and Jiang, Bingchuan},
  journal={arxiv},
  year={2020}
}
```
---

## 1. Next

SIFT features should be introduced as differential prymaid images, which should be concatnated with homo-warpped features. 
