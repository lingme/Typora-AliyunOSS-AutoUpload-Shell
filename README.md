简体中文 | [English](./README-EN.md)

<h1 align="center" style="margin-top:100px;margin-bottom:100px">Typora Aliyun OSS Shell</h1>


## 介绍

自动上传图片到阿里云 OSS 的 Typora shell 脚本，详细教程请看 [**这里**](https://lingmin.me/2020/05/08/TyporaAutoUploadShell/)



## 使用

### 1. 下载

* 请先下载本仓库的 **AliyunOssAutoUpload.sh**
* Windows 系统请下载（MacOS 和 Linux 不需要） [**Git**](https://git-scm.com/downloads)



### 2. Shell配置

下载完成后，请打开 shell 文件，然后做如下配置

```shell
# ==================== Config ====================

host        ="your-oss-host"
bucket      ="your-oss-bucket"
id          ="your-oss-AccessKey ID"
key         ="your-oss-AccessKey Secret Key"
cloudFolder ="your-oss-folder"

# ================================================
```
<h4 style="color:red;">[ host ]</h4>

阿里云 OSS EndPoint（地域节点）地址，可以在 OSS 控制台的 Bucket 列表->概述，找到。

<h4 style="color:red;">[ bucket ]</h4>

阿里云OSS Bucket名称。

<h4 style="color:red;">[ id , key ]</h4>

**id** 阿里云 OSS AccessKey ID

**key** 阿里云 OSS AccessKey Secret

<h4 style="color:red;">[ cloudFolder ]</h4>

需要保存图片的阿里云 OSS 目录


示例：

cloudFolder="ME"

cloudFolder="ME/Demo"



## 3. Typora配置

<h4 style="color:red;">MacOS & Linux</h4>


需要设置运行权限

```shell
chmod 777 AliyunOssAutoUpload.sh
```

Typora 的 Command 设置

```shell
./AliyunOssAutoUpload-Safety.sh
```

**注意：我这里的示例是当前地址，需要配置绝对地址**



<h4 style="color:red;">Windows</h4>


Typora 的 Command 设置

```shell
"C:\Program Files\Git\bin\sh.exe" "Z:\Code\Typora-AliyunOSS-AutoUpload-Shell\AliyunOssAutoUpload.sh"
```

**注意：由于 Windows 缺失 Shell 解释器，所以需要前面安装的 Git，因为 Git 自带 sh 解释器**



## 4. 测试

完成上面的步骤就可以愉快的使用了，但是保险起见，可以运行一下 Typora 自带的测试工具，就在刚刚的设置页面里头，点击 **Test Uploader** 开始测试



## 5. 使用

直接复制图片或者拖动到 Typora 编辑区域，图片将自动完成上传并且引用。
