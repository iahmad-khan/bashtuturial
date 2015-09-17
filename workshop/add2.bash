# This is the function add with more added to it
function add2
{ 
	let sum=$1+$2 
	echo function name = $0 
	echo testvar inside = $testvar 
	typeset testvar 
	testvar=2 
	echo testvar inside = $testvar 
}
testvar=1 
echo testvar outside = $testvar 
add2 $1 $2 
echo sum outside = $sum
echo testvar outside = $testvar 
