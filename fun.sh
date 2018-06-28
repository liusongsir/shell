#!/bin/bash
echo "本节演示函数的使用"
echo "首先定义一个加函数"
fun(){
  echo "请输入第一个数"
  read a
  echo "请输入第二个数"
  read b
  return $(($a + $b))
}

fun

echo "两个数求和得:$?"

echo "函数中输出参数"
funP(){
  echo "第一个参数$1"
  echo "第二个参数$2"
  echo "第十个参数${10}" #从第10个参数开始，需要使用{}才能获取到参数
  echo "第十一个参数${11}"
  echo "总参数个数为：$#"
  echo "全部参数:$*"
  echo "全部参数：$@"
  echo "当前进程ID：$$"
}
funP A B 3 4 5 6 7 8 9 C D F
