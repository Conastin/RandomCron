# RandomCron

![Blank](https://img.shields.io/github/v/release/Conastin/RandomCron?style=plastic)
![Blank](https://img.shields.io/github/license/Conastin/RandomCron?style=plastic)
![Blank](https://img.shields.io/github/size/Conastin/RandomCron/RandomCron.sh?style=plastic)
![Blank](https://img.shields.io/github/release-date/Conastin/RandomCron?style=plastic)
![Blank](https://img.shields.io/github/downloads/Conastin/RandomCron/total?style=plastic)

## 他能做什么

使用该脚本可以随机创建cron任务，解决原生cron只能固定时间运行的弊端，用于随机执行程序。

## 使用说明

- [点此下载](https://github.com/Conastin/RandomCron/releases)中的**RandomCron.sh**
- 放在一个**固定**位置
- **修改**其中的[配置文件](#配置说明)
- 手动[运行](#运行说明)该脚本

## 配置说明

```shell
RandomCronPath="填写这个脚本放至的路径"
RandomCronName="填写这个脚本的名称"
RandomCronLogPath="填写执行这个脚本的日志路径"
RandomCronLogName="填写执行这个脚本的日志名称"

RunCronPath="填写定时完毕需要运行的脚本路径"
RunCronName="填写需要随机运行的程序名称"
RunCronLogPath="填写随机运行的程序的日志路径"
RunCronLogName="填写随机运行的程序的日志名称"
```
示例配置
```shell
# 填写这个脚本放至的路径
RandomCronPath="/home/script/xxx"
# 填写这个脚本的名称
RandomCronName="RandomCron.sh"
# 填写执行这个脚本的日志路径
RandomCronLogPath="/home/script/log/"
# 填写执行这个脚本的日志名称
RandomCronLogName="RandomCronLog.text"

# 填写定时完毕需要运行的脚本路径
RunCronPath="/home/script/xxx"
# 填写需要随机运行的程序名称
RunCronName="xxx"
# 填写随机运行的程序的日志路径
RunCronLogPath="/home/script/log/"
# 填写随机运行的程序的日志名称
RunCronLogName="RunLog.text"
```

## 运行说明
> 选一种即可
- `bash RandomCron.sh`
- `sh RandomCron.sh`
- `./RandomCron.sh`
- `/文件的绝对路径/RandomCron.sh`

## 开源许可证

- [MIT](https://choosealicense.com/licenses/mit)

```
MIT License

Copyright (c) 2022 Conastin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
