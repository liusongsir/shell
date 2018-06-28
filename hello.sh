#!/bin/bash
echo "HelloShell"
name="liusong"
echo ${name}
name="liusongsir" #变量可重复赋值
echo ${name}
echo 'Hello,${name}' #单引号会原样输出，不能识别变量，也不能包含单引号，即时进行了转义
echo "hello,${name}" #双引号可使用变量，可使用转义
echo "Hello,\"liusong\""
echo ${#name} #输出变量的长度
firstName="liu"
lastName="song" #定义变量 = 号不要有空格
echo ${firstName}${lastName}
str=${firstName}${lastName} #字符串拼接
echo ${str:2:2} #从指定位置截取指定长度字符串
echo `expr index "${str}" on` #搜索o或n在str中的位置，返回最后一个值
arr=("liu" "song" "sir")  #定义数组
echo ${arr[@]} #输出数组全部值
echo ${arr[*]}
echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}
echo ${#arr[@]} #输出数组长度
echo ${#arr[*]}  #输出数组长度
#这里是注释
#下面演示获取参数值 $n
echo "第一个参数为脚本名:$0"
echo "第二个参数为：$1"
echo "获取未传递的第三个参数：$2"
echo '使用$*和$@的区别'
echo "所有参数作为一个整体显示：$*"
echo "所有参数作为一个数组显示：$@"
echo '遍历$*'
for i in "$*";do
 echo $i
done
echo '遍历$@'
for j in "$@";do
 echo $j
done
a=10
b=10
c=`expr $a + $b ` #需要通过expr实现表达式计算 变量和符号之间需要有空格
d=`expr $a - $b `
e=`expr $a \* $b ` #乘法运算符需要转义
f=`expr $a / $b `
g=`expr $a % $b `
echo 'a=10 b=10'
echo "a+b=${c}"
echo "a-b=${d}"
echo "a*b=${e}"
echo "a/b=${f}"
echo "a%b=${g}"
if [ $a == $b ] #条件表达式需要放在[]之间，且需要有空格
then
   echo 'a==b'
fi
if [ $a != $b ]
then
   echo 'a!=b'
fi
m=10
n=20
echo '比较m=10 n=20的关系'
if [ $m -eq $n ]
then
  echo "$m -eq $n:m等于n"
else
  echo "$m -eq $n:m不等于n"
fi
if [ $m -ne $n ]
then
  echo "$m -ne $n:m不等于n"
else
  echo "$m -ne $n:m等于n"
fi
if [ $m -lt $n ]
then
  echo "$m -lt $n:m小于n"
else
  echo "$m -lt $n:m大于n"
fi
if [ $m -gt $n ]
then
  echo "$m -gt $n:m大于n"
else
  echo "$m -gt $n:m小于n"
fi
if [ $m -le $n ]
then
  echo "$m -le $n:m小于等于n"
else
  echo "$m -le $n:m大于n"
fi
if [ $m -ge $n ]
then
  echo "$m -ge $n:m大于等于n"
else
  echo "$m -ge $n:m小于n"
fi
if [ $m != $n ]
then
  echo "$m != $n:m不等于n"
else
  echo "$m != $n:m等于n"
fi
if [ $m -lt 10 -o $n -gt 15 ]
then
  echo "$m -lt 10 -o $n -gt 15:m小于10 或 n大于15"
else
  echo "$m -lt 10 -o $n -gt 15:m不小于10 而且 n不大于15"
fi
if [ $m -lt 10 -a $n -gt 15 ]
then
  echo "$m -lt 10 -a $n -gt 15:m小于10 且 n大于15"
else
  echo "$m -lt 10 -a $n -gt 15:m不小于10 或者 n不大于15"
fi
if [[ $m -lt 10 && $n -gt 15 ]]  #这里使用双中括号
then
  echo "$m -lt 10 && $n -gt 15:m小于10 且 n大于15"
else
  echo "$m -lt 10 && $n -gt 15:m不小于10 或者 n不大于15"
fi
if [[ $m -lt 10 || $n -gt 15 ]]
then
  echo "$m -lt 10 || $n -gt 15:m小于10 或 n大于15"
else
  echo "$m -lt 10 || $n -gt 15:m不小于10 且 n不大于15"
fi
echo '字符串比较'
one="one"
two="two"
if [ $one = $two ]
then
  echo "$one = $two:one等于two"
else
  echo "$one = $two:one不等于two"
fi

if [ $one != $two ]
then
  echo "$one != $two:one不等于two"
else
  echo "$one != $two:one等于two"
fi

if [ -z $one ]
then
  echo "-z $one:字符串长度为0"
else
  echo "-z $one:字符串长度不为0"
fi

if [ -n $two ]
then
  echo "-n $two:字符串的长度不为0"
else
  echo "-n $two:字符串的长度为0"
fi

if [ $one ]
then
  echo "$one:字符串不为空"
else 
  echo "$one:字符串为空"
fi 

file="/usr/local/shell_demo/hello.sh"

if [ -e $file ]
then
  echo "文件${file}存在"
fi

if [ -f $file ]
then
  echo "文件${file}是普通文件"
fi

if [ -r $file ]
then
  echo "文件${file}可读"
else
  echo "文件${file}不可读"
fi

if [ -w $file ]
then
  echo "文件${file}可写"
else
  echo "文件${file}不可写"
fi

if [ -x $file ]
then
  echo "文件${file}可执行"
else
  echo "文件${file}不可执行"
fi

if [ -d $file ]
then
  echo "文件${file}是目录"
else
  echo "文件${file}不是目录"
fi

if [ -s $file ]
then
  echo "文件${file}不为空"
else
  echo "文件${file}为空"
fi

echo "下面演示echo命令的使用"
echo -e "echo -e 加上-e选项可以开启转义\n这里和上面是同一个echo命令输出的，只是用了换行符"
printf "printf命令类似echo，可以使用格式符号等"
printf "\n这里使用了换行%s\n" %s占位符
printf "\ntest命令测试\n"
if test -f $file
then
  printf "\n文件${file}是普通文件\n"
fi
echo -e  "\n测试流程控制语句"
a=10
b=20
if [ $a -eq $b ]
then
  echo "$a==$b"
elif [ $a -gt $b ]
then
  echo "$a>$b"
else
  echo "$a<$b"
fi
