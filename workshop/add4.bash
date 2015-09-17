# And finally ... (The final script should look like this) 
function add4
{ 
# 1) new line here 
trap "echo function received INT ; exit" INT  


	echo function name = $0 
	echo testvar inside = $testvar 
	typeset testvar 
	testvar=2 
	echo testvar inside = $testvar 
	let sum=$1+$2 
	return 2
}
testvar=1 
echo testvar outside = $testvar 
# 2) new line here 
trap "echo program received INT ; exit" INT   
# 3) replace line above with 
# trap "" INT 
sleep 9
add4 $1 $2 
echo return code = $?
echo sum outside = $sum
echo return code = $? 
echo testvar outside = $testvar 
