简体中文 | [English](./README-EN.md)


<h1 align="center">Typora Aliyun OSS Shell</h1>


## 介绍

自动上传图片到阿里云OSS的Typora自定义脚本



## 使用

### 1.下载

请先下载 **AliyunOssAutoUpload.sh**

### 2.配置

下载完成后，请打开这个 shell 文件，然后做如下配置

```shell
# ==================== Config ====================

host="your-oss-host"
bucket="your-oss-bucket-name"
id="your-oss-bucket-id"
key="your-oss-bucket-key"
cloudFolder="your-oss-bucket-folder"

# ================================================
```

> host

你的阿里云host地址，可以在OSS控制台的Bucket列表->概述，找到。
