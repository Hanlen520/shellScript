#/bin/bash

#text与test.txt文件内容一致
text='
a what is this in english\n
how old are you\n
it is very good and nice\n
b 测试测试测试\n
c日期：2018-08-22\n
d姓名：王刚  性别：男  年龄：30 end\n
电话：13699193860  OK\n
邮编：xxx@mm.com
<html>
<head><title>正则表达式测试</title></head>
<body>
	<h1>美图</h1>
	<img src="http://www.baidu.com/aaa/mmaap.jpg">
	<h1>美女</h1>
	<img src="http://www.baidu.com/aaa/美女.png">
	<h2>标题</h2>
	<p>哈哈哈</p>
	<p>哟呵呵</p>
</body>
</html>
'

#显示行号
#cat test.txt | grep -n 'english'; 

#只显示匹配的内容
#cat test.txt | grep -o 'is'; 
#cat test.txt | grep -o '.\+@.\+\.com'

#只显示以b开头的行
#cat test.txt | grep  '^b'; 

#只显示以e结尾的行
#cat test.txt | grep  'e$';

#显示包含电话号码的行
#cat test.txt | grep '\d\{11,11\}'
#cat test.txt | grep '[0-9]\{11,11\}'





















