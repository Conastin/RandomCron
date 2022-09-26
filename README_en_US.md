# RandomCron

![Blank](https://img.shields.io/github/v/release/Conastin/RandomCron?style=plastic)
![Blank](https://img.shields.io/github/license/Conastin/RandomCron?style=plastic)
![Blank](https://img.shields.io/github/size/Conastin/RandomCron/RandomCron.sh?style=plastic)
![Blank](https://img.shields.io/github/release-date/Conastin/RandomCron?style=plastic)
![Blank](https://img.shields.io/github/downloads/Conastin/RandomCron/total?style=plastic)

[简体中文](https://github.com/Conastin/RandomCron/blob/main/README.md) | English

## What can he do

This script can be used to randomly create CRON tasks, to solve the problem that native CRON can only run at a fixed time, and to randomly execute programs.

## Begin to use

- [Click here](https://github.com/Conastin/RandomCron/releases) to download **RandomCron.sh**
- Put RandomCron.sh in an **absolute** position
- **Modify** the [configuration file](#configuration-instructions)
- [Run](#running-instructions) the script manually

## Configuration instructions

```shell
RandomCronPath="Fill in the path for the script"
RandomCronName="Fill in the script name"
RandomCronLogPath="Enter the log path where this script was executed"
RandomCronLogName="Fill in the name of the log that executes this script"
RunCronPath="Enter the path of the script to be run after the scheduled completion"
RunCronName="Enter the name of the program that you want to run randomly"
RunCronLogPath="Enter the log path of a randomly run program"
RunCronLogName="Enter the log name of the randomly run program"
```
Sample configuration
```shell
# Fill in the path for the script
RandomCronPath="/home/script/xxx"
# Fill in the script name
RandomCronName="RandomCron.sh"
# Enter the log path where this script was executed
RandomCronLogPath="/home/script/log/"
# Fill in the name of the log that executes this script
RandomCronLogName="RandomCronLog.text"
# Enter the path of the script to be run after the scheduled completion
RunCronPath="/home/script/xxx"
# Enter the name of the program that you want to run randomly
RunCronName="xxx"
# Enter the log path of a randomly run program
RunCronLogPath="/home/script/log/"
# Enter the log name of the randomly run program
RunCronLogName="RunLog.text"
```

## Running instructions
> Just choose one
- `bash RandomCron.sh`
- `sh RandomCron.sh`
- `./RandomCron.sh`
- `/[The absolute path to the file]/RandomCron.sh`

## Open source license

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
