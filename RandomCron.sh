#!/bin/bash


# 填写crontab文件【绝对位置】
CrontabPath="/var/spool/cron/root"

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

# 添加转义
RandomCronPathFormat=$(echo ${RandomCronPath} | sed -e 's/\//\\\//g')
RandomCronLogPathFormat=$(echo ${RandomCronLogPath} | sed -e 's/\//\\\//g')
RunCronPathFormat=$(echo ${RunCronPath} | sed -e 's/\//\\\//g')
RunCronLogPathFormat=$(echo ${RunCronLogPath} | sed -e 's/\//\\\//g')

# 为该脚本构造cron任务
RandomCron="0 0 * * * ${RandomCronPathFormat}${RandomCronName} >> ${RandomCronLogPathFormat}${RandomCronLogName} 2>&1"

# 判断是否存在cron任务
if [ -z "$(grep ${RandomCronPath}${RandomCronName} ${CrontabPath})" ]; then
  # 向crontab文件中添加cron任务
  $(sed -i '$a\'"${RandomCron}" ${CrontabPath})
  echo "向crontab文件中添加root-cron任务成功"
fi

## 随机生成秒
#ss=$(($RANDOM % 60))
# 随机生成分钟(确保设定时间迟于[00:00])
mm=$(($RANDOM % 59 + 1))
# 随机生成小时
hh=$(($RANDOM % 16))
# 构造随机cron任务
RunCron="${mm} ${hh} * * * cd ${RunCronPathFormat}; ${RunCronPathFormat}${RunCronName} >> ${RunCronLogPathFormat}${RunCronLogName} 2>&1"
echo "${mm} ${hh} * * * "
# 判断是否存在cron任务
if [ -z "$(grep ${RunCronPath}${RunCronName} ${CrontabPath})" ]; then
  # 向crontab文件中添加cron任务
  $(sed -i '$a\'"${RunCron}" ${CrontabPath})
  echo "向crontab文件中添加run-cron任务成功"
else
  # 删除原cron任务
  $(sed -i "/${RunCronPathFormat}${RunCronName}/d" ${CrontabPath})
  echo "删除原run-cron任务成功"
  # 向crontab文件中添加cron任务
  $(sed -i '$a\'"${RunCron}" ${CrontabPath})
  echo "更新run-cron任务成功"
fi
