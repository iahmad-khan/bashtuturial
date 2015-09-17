# This is add2 with more
function add3
{ 
	let sum=$1+$2 
	echo function name = $0 
	echo testvar inside = $testvar 
	typeset testvar 
	testvar=2 
	echo testvar inside = $testvar 
	return 2 			# then exit 2, then remove 
}
testvar=1 
echo testvar outside = $testvar 
add3 $1 $2 
echo return code = $?
echo sum outside = $sum
echo testvar outside = $testvar 
