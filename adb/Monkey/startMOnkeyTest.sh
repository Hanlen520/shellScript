#!/bin/bash
#push 脚本到手机，并执行Monkey脚本
adb push monkey /storage/sdcard0/  & adb logcat -c & adb shell 'sh /sdcard/monkey/monkey.sh'