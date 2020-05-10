简体中文 | [English](./README-EN.md)

<h1 align="center" style="margin-top:100px;margin-bottom:100px">Typora Aliyun OSS Shell</h1>


## 介绍

自动上传图片到阿里云OSS的Typora自定义脚本。



## 使用

### 1.下载

* 请先下载本仓库的 **AliyunOssAutoUpload.sh**
* Windows系统请下载（MacOS 和 Linux 不需要） [**Git**](https://git-scm.com/downloads)

### 2.配置

下载完成后，请打开这个 shell 文件，然后做如下配置

```shell
# ==================== Config ====================

host="your-oss-host"
bucket="your-oss-bucket"
id="your-oss-AccessKey ID"
key="your-oss-AccessKey Secret Key"
cloudFolder="your-oss-folder"

# ================================================
```

> host

你的阿里云host地址，可以在OSS控制台的Bucket列表->概述，找到。

