@echo off

rem --------------ʹ��˵����------------------------

rem -p����ָ��Ҫ���Եİ���
rem --throttle ÿ���¼�֮��ļ���¼�����λΪ����
rem -s ָ��seedֵ�����sedֵ��ͬ����ô����ִ�е�����¼�Ҳ��ͬ
rem -v ָ����־����һ����3����־����0,1,2��-v �� ����0��-v -v ����1��-v -v -v ����2��
rem  -v  Ĭ��ѡ�� �����ṩ������ʾ��������ɺ����ս����������Ϣ
rem  -v -v �ṩ��Ϊ��ϸ����־������ÿ�����͵�Activity���¼���Ϣ
rem  -v -v -v����ϸ����־�������˲�����ѡ��/δѡ�е�Activity��Ϣ





rem ----------------ִ��monkey����-------------------

powershell "adb shell monkey -p com.yixia.videoeditor --throttle 500 -s 68  -v -v 5000 | tee monkeyTest.log"

pause