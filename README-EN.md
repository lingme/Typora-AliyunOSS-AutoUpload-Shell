English | [简体中文](https://github.com/lingme/Typora-AliyunOSS-AutoUpload-Shell)

<h1 align="center" style="margin-top:100px;margin-bottom:100px">Typora Aliyun OSS Shell</h1>



## Introduction

Typora custom script for automatically uploading pictures to Alibaba Cloud OSS, For detailed tutorial, please see [here](https://lingmin.me/2020/05/08/TyporaAutoUploadShell/)



## Usage

### 1. Download

* Please download this **AliyunOssAutoUpload.sh**
* Windows sysytem please download（Not required for MacOS and Linux） [**Git**](https://git-scm.com/downloads)



### 2. Shell Configuration

After downloading, please open the shell file and do the following configuration

```shell
# ==================== Config ====================

host        ="your-oss-host"
bucket      ="your-oss-bucket"
id          ="your-oss-AccessKey ID"
key         ="your-oss-AccessKey Secret Key"
cloudFolder ="your-oss-folder"

# ================================================
```
<h4 style="color:red;">host</h4>

Alibaba Cloud OSS EndPoint，You can find it in the Bucket List-> Overview of the OSS console。

<h4 style="color:red;">bucket</h4>

Alibaba Cloud OSS Bucket name。

<h4 style="color:red;">id 和 key</h4>

**id** Alibaba Cloud OSS AccessKey ID

**key** Alibaba Cloud OSS AccessKey Secret

<h4 style="color:red;">cloudFolder</h4>

Alibaba Cloud OSS directory where pictures need to be saved


**Example：**

cloudFolder="ME"

cloudFolder="ME/Demo"



## 3. Typora Configuration

<h4 style="color:red;">MacOS & Linux</h4>


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

Typora command setting

```shell
"C:\Program Files\Git\bin\sh.exe" "Z:\Code\Typora-AliyunOSS-AutoUpload-Shell\AliyunOssAutoUpload.sh"
```

**Note: Since the shell interpreter is missing from Windows, the Git installed earlier is required because Git comes with the sh interpreter**



## 4. Test Uploader

After completing the above steps, you can use it happily, but for safety, you can run the test tool that comes with Typora, just in the settings page, click ** Test Uploader ** to start the test



## 5. Quick Usage

Copy the picture directly or drag it to the Typora editing area, the picture will be automatically uploaded and quoted.
