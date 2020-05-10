English | [简体中文](./README.md)

<h1 align="center">Typora Auto Upload Aliyun OSS</h1>


## Introduction

Typora custom script for automatically uploading pictures to Alibaba Cloud OSS



## Usage

### 1. Download

* Please download this **AliyunOssAutoUpload.sh**
* Windows sysytem please download（Not required for MacOS and Linux） [**Git**](https://git-scm.com/downloads)



### 2. Shell Configuration

After downloading, please open the shell file and do the following configuration

```shell
# ==================== Config ====================

host="your-oss-host"
bucket="your-oss-bucket"
id="your-oss-AccessKey ID"
key="your-oss-AccessKey Secret Key"
cloudFolder="your-oss-folder"

# ================================================
```
<h4 style="color:red;">host</h4>

Alibaba Cloud OSS EndPoint，You can find it in the Bucket List-> Overview of the OSS console。

![Screen Shot 2020-05-10 at 8.43.48 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.43.48_PM.png)

<h4 style="color:red;">bucket</h4>

Alibaba Cloud OSS Bucket name。

![Screen Shot 2020-05-10 at 8.45.10 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.45.10_PM.png)

<h4 style="color:red;">id 和 key</h4>

**id** Alibaba Cloud OSS AccessKey ID

**key** Alibaba Cloud OSS AccessKey Secret

![Screen Shot 2020-05-10 at 8.50.38 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.50.38_PM.png)

![Screen Shot 2020-05-10 at 8.52.46 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.52.46_PM.png)

<h4 style="color:red;">cloudFolder</h4>

Alibaba Cloud OSS directory where pictures need to be saved

![Screen Shot 2020-05-10 at 8.58.22 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_8.58.22_PM.png)

**Example：**

cloudFolder="ME"

cloudFolder="ME/Demo"



## 3. Typora Configuration

<h4 style="color:red;">MacOS & Linux</h4>

![Screen Shot 2020-05-10 at 9.06.33 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_9.06.33_PM.png)

Need to set run permissions

```shell
chmod 777 AliyunOssAutoUpload.sh
```

Typora command setting

```shell
./AliyunOssAutoUpload-Safety.sh
```

**Note: My example here is the current address, you need to configure the absolute address**



<h4 style="color:red;">Windows</h4>

![Screen Shot 2020-05-10 at 9.14.59 PM](https://my-blog-oss.oss-cn-hangzhou.aliyuncs.com/uPic/Screen_Shot_2020-05-10_at_9.14.59_PM.png)

Typora command setting

```shell
"C:\Program Files\Git\bin\sh.exe" "Z:\Code\Typora-AliyunOSS-AutoUpload-Shell\AliyunOssAutoUpload.sh"
```

**Note: Since the shell interpreter is missing from Windows, the Git installed earlier is required because Git comes with the sh interpreter**



## 4. Test Uploader

After completing the above steps, you can use it happily, but for safety, you can run the test tool that comes with Typora, just in the settings page, click ** Test Uploader ** to start the test



## 5. Quick Usage

Copy the picture directly or drag it to the Typora editing area, the picture will be automatically uploaded and quoted.