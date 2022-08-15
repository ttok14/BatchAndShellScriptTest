# -z 는 빈 문자열이라면은 True , 아니라면 False 를 반환하는 테스트
var=$1

if [[ -z $var ]]
then
	echo "This is Empty String !"
else 
	echo "This isnt empty !"
fi