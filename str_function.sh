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


<<EOF
秒数转为为方便阅读时间
EOF

function friendlyTimeLen ()
{
	time_len=$1

	hours=$(($time_len / 3600 ))
	mins=$((($time_len-$hours*3600)/60))
	second=$(($time_len-$hours*3600-$mins*60))

	time=($hours $mins $second)

	echo ${time[*]}
}


#demo date转为数组
date="2020-05-28"
date_args=($(explode '-' $date))


str=($(strtoupper "sdssdssd"))
echo $str


str=($(strtolower "SAAASDFF"))
echo $str


#返回数组实质是方法依次echo结果，调用变量转为数组
time_args=($(friendlyTimeLen 3663))

echo "耗时：${time_args[0]}h ${time_args[1]}min ${time_args[2]}s"



