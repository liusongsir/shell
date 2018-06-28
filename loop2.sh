echo "输入一个数字"
while true
do
  read num
  case $num in
  1|2|3|4|6) echo "bingo";;
  *) echo "辣鸡"
  break;; #break要单独放一行
  esac
done
echo "结束了"
