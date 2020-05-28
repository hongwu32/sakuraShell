#!/bin/sh


<<EOF
实现PHP explode方法功能

@param string delimiter 分隔符
@param string str       字符串

@return array

EOF

function explode ()
{
	delimiter=$1
	str=$2

	tmp=$IFS
	IFS='-'
	array=($date)
	IFS=$tmp

	#shell 返回方式两种 1.return 2.echo 
	echo ${array[*]}
}

<<EOF
字母小写转大写
EOF

function strtoupper ()
{
	str=$1
	echo $(echo ${str}|tr "[:lower:]" "[:upper:]")
}


<<EOF
字母大写转小写
EOF

function strtolower ()
{
	str=$1
	echo $(echo ${str}|tr "[:upper:]" "[:lower:]")
}


#demo date转为数组
date="2020-05-28"
date_args=($(explode '-' $date))


str=($(strtoupper "sdssdssd"))
echo $str


str=($(strtolower "SAAASDFF"))
echo $str



