# Multisensor-systems-Pattern-Classification--KNN-Algorithm-

# [Brief Overview] 
## [Section One - Data Processing / Fault Classification]
Sensor measurements/vibration data from five test rigs were used (shown below) to design a health monitoring system of a rotating machine through exracting informative features from the raw (sensor) data along with evaluating the data in frequency and time-domain.

![image](https://user-images.githubusercontent.com/42310216/146125282-1d32796c-b806-4697-b06f-1ee69d04c6ac.png)

### [Rotating Machine Faults Considered]
- Fault 1: Bearing Fault
- Fault 2: Gear Mesh 
- Fault 3: Imbalance 
- Fault 4: Misalignment 
- Fault 5: Resonance 

### [Energy levels in six frequency bands]
The raw data was initially normalized and then processed further to deduce the power spectral density for each individual features with appropriate filter (Butterworth) implemented


![image](https://user-images.githubusercontent.com/42310216/146125941-c90a56c8-3583-4bc9-83ba-4b1b01fb07d7.png)

### [Principal Component Analysis]
Principal Component Analysis, PCA, method was implemented to reduce the number of dimensions/features and for visualization purposes. 


![image](https://user-images.githubusercontent.com/42310216/146126161-26d6affc-0b35-4ca5-ad91-546a25cae6a7.png)

## [Section Two - Health Monitoring System]
1-Nearest Neighbor Algorithm was implemented using the *Euclidean* distance measure. KNN algorithm clasifies the new/upcoming measurement based on the class of one of its nearest neighbours. In other words, the algorithm implemented finds the similarity between the *training* measurements and the *new/test* measurements. 

**Following assumptions were made:**


![image](https://user-images.githubusercontent.com/42310216/146126953-d1cd908d-c112-4574-a56b-e481acb1350d.png)

*The algorithm had an accuracy of 98.66% in determining and classifying faults via frequency data*

### [General process to determine the health condition of a system]
![image](https://user-images.githubusercontent.com/42310216/146127184-1e7b19b3-8c33-488f-aa09-707bc10b4787.png)

## [Secton Three - Health Monitoring System (Wind Turbine Co.)] 
Multisensor signal estimation and health monitoring system was designed and implemented for a wind turbine manufacturing company with prior knowledge of the pitch angle being uniformly distributed in the range 0° <= w <= 30° and the sensor noise being normally distributed V ~ N(0,9). 

MMSE Estimator was implemented by taking Bayes' Theorem into consideration to predict the actual measured data (without noise) of wind turbine blades. 
Additionally, CUSUM two-sided test was also implemented to identifiy if the measured data exceeds the desired threshold and generate an alert. 


## [Report]
A report was generated highlighting important findings and critically evaluating the results. 

译文：
# 多传感器系统模式分类--KNN 算法-

# [简要概述]
## [第一部分 - 数据处理 / 故障分类]
使用来自五个测试台的传感器测量/振动数据（如下所示）来设计旋转机器的健康监测系统，通过从原始（传感器）数据中提取精确的信息特征，并在频域和时域中评估数据。

![图片]（https://user-images.githubusercontent.com/42310216/146125282-1d32796c-b806-4697-b06f-1ee69d04c6ac.png）

### [考虑旋转电机故障]
- 故障 1：轴承故障
- 故障 2：齿轮啮合
- 故障 3：不平衡
- 故障 4：错位
- 故障 5：共振

### [六个频段的能级]
原始数据最初被归一化，然后进一步处理，以推断出每个单独特征的功率谱密度，并实施了适当的滤波器 （Butterworth）

![图片]（https://user-images.githubusercontent.com/42310216/146125941-c90a56c8-3583-4bc9-83ba-4b1b01fb07d7.png）

### [主成分分析]
实施主成分分析 （PCA） 方法以减少维度/特征的数量并用于可视化目的。

![图片]（https://user-images.githubusercontent.com/42310216/146126161-26d6affc-0b35-4ca5-ad91-546a25cae6a7.png）

## [第二节 - 健康监测系统]
1-最近邻算法是使用 *Euclidean* 距离测量实现的。KNN 算法根据其最近的邻居之一的类别来划分新的/即将到来的测量。换句话说，实现的算法找到了 *training* 测量值和 *new/test* 测量值之间的相似性。

**我们做出了以下假设：**

![图片]（https://user-images.githubusercontent.com/42310216/146126953-d1cd908d-c112-4574-a56b-e481acb1350d.png）

*该算法通过频率数据确定和分类故障的准确率为 98.66%*

### [确定系统健康状况的一般过程]
![图片]（https://user-images.githubusercontent.com/42310216/146127184-1e7b19b3-8c33-488f-aa09-707bc10b4787.png）

## [第三节 - 健康监测系统 （风力发电机公司）]
多传感器信号估计和健康监测系统是为一家风力涡轮机制造公司设计和实施的，先验知识是俯仰角在 0° <= w <= 30° 范围内均匀分布的，传感器噪声呈正态分布 V ~ N（0,9）。

MMSE Estimator 是通过考虑贝叶斯定理来预测风力涡轮机叶片的实际测量数据（无噪声）来实现的。
此外，还实施了 CUSUM 双面测试，以确定测量数据是否超过所需阈值并生成警报。

## [举报]
生成了一份报告，重点介绍重要发现并对结果进行批判性评估。
