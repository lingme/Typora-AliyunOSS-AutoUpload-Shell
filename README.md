简体中文 | [English](./README-EN.md)

<h1 align="center" style="margin-top:100px;margin-bottom:100px">Typora Aliyun OSS Shell</h1>


## 介绍

自动上传图片到阿里云OSS的Typora自定义脚本。



## 使用

### 1. 下载

* 请先下载本仓库的 **AliyunOssAutoUpload.sh**
* Windows系统请下载（MacOS 和 Linux 不需要） [**Git**](https://git-scm.com/downloads)

### 2. Shell配置

下载完成后，请打开 shell 文件，然后做如下配置

```shell
# ==================== Config ====================

host="your-oss-host"
bucket="your-oss-bucket"
id="your-oss-AccessKey ID"
key="your-oss-AccessKey Secret Key"
cloudFolder="your-oss-folder"

# ================================================
```
---
> #### **host**

阿里云OSS EndPoint（地域节点）地址，可以在OSS控制台的Bucket列表->概述，找到。

![Screen Shot 2020-05-10 at 8.43.48 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.43.48_PM.png)

---
> #### **bucket**

阿里云OSS Bucket名称。

![Screen Shot 2020-05-10 at 8.45.10 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.45.10_PM.png)

---
> #### **id**
>
> #### **key**

**id** 阿里云OSS AccessKey ID

**key** 阿里云OSS AccessKey Secret

![Screen Shot 2020-05-10 at 8.50.38 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.50.38_PM.png)

![Screen Shot 2020-05-10 at 8.52.46 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.52.46_PM.png)

---
> #### **cloudFolder**

需要保存图片的阿里云OSS目录

![Screen Shot 2020-05-10 at 8.58.22 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.58.22_PM.png)

示例：

cloudFolder="ME"

cloudFolder="ME/Demo"

