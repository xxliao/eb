#!/bin/bash

while :; do

        #判断进程是否存在，如果不存在就启动它
        PIDS=`ps -ef |grep firefox |grep -v grep | awk '{print $2}'`
        if [ "$PIDS" != "" ]; then
                echo "firefox is runing!"
        else
                echo "restart firefox"
                firefox
        #运行进程
        fi

        #wait for 10 seconds
        sleep 10
done
