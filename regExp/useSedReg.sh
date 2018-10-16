#/bin/bash
:<<!
sed是一种流编辑器，它是文本处理中非常中的工具，能够完美的配合正则表达式使用，
功能不同凡响。处理时，把当前处理的行存储在临时缓冲区中，称为“模式空间”（pattern space），
接着用sed命令处理缓冲区中的内容，处理完成后，把缓冲区的内容送往屏幕。接着处理下一行，这样不断重复，
直到文件末尾。文件内容并没有 改变，除非你使用重定向存储输出。Sed主要用来自动编辑一个或多个文件；
简化对文件的反复操作；编写转换程序等。

命令格式
sed [options] 'command' file(s)
sed [options] -f scriptfile file(s)

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

#替换所有的is为are，不会写入源文件
#sed 's/is/are/g' test_sed.txt
sed 's/is/are/2g' test_sed.txt
