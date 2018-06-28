echo "多种循环测试"
for((i=1;i<5;i++))
do
  echo "当前序号为${i}"
done;

for var in 1 2 3
do
  echo "当前值：${var}"
done

for s in "This is string"
do
  echo "当前值:${s}"
done

for c in 'This is char'; do echo "当前值：${c}"; done;

i=1
while (($i < 5))
do
 echo "当前值：$i"
 let "i++"
done

echo "请输入一句话："
#while read say
#do
#  echo "你是说：$say 吗？"
#done

k=1
while (( $k < 5 ))
do
  echo "$k < 5"
  k=`expr $k + 1`
done

n=1
until (( $n > 3))
do
  echo "$n < 3"
  let "n++"
done

echo "请输入一个数字"
while read num
do
  case $num in
  1) echo "没猜对，幸运数字比${num}大哦";;
  2) echo "没猜对，幸运数字比${num}大一点点";;
  3) echo "哇塞，猜对啦，幸运数字就是${num}啦";;
  4) echo "没猜对，幸运数字比${num}小啦";;
  *) echo "没猜到，离幸运数字越来越远了呢";;
  esac
done

