#/bin/bash
#grep的正则表达式用法，grep多数情况下用来找到匹配的行
:<<!
在linux中，通配符是由shell解释的，而正则表达式则是由命令解释的
^ 行首
$ 行尾
. 除了换行符以外的任意单个字符
* 前导字符的零个或多个
.* 所有字符
[] 字符组内的任一字符
[^] 对字符组内的每个字符取反(不匹配字符组内的每个字符)  
^[^] 非字符组内的字符开头的行
[a-z] 小写字母
[A-Z] 大写字母
[a-Z] 小写和大写字母
[0-9] 数字
\< 单词头 单词一般以空格或特殊字符做分隔,连续的字符串被当做单词
\> 单词尾
!


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
#grep -n 'are' test.txt

#只显示匹配的内容
#cat test.txt | grep -o 'is'; 
#cat test.txt | grep -o '.\+@.\+\.com'

#只显示以b开头的行
#cat test.txt | grep  '^b'; 

#只显示以e结尾的行
#cat test.txt | grep  'e$';

#显示包含电话号码的行
#cat test.txt | grep '\d\{11,11\}'
cat test.txt | grep '[0-9]\{11,11\}'























