///@@ Finds the highest value of an array
/// @param {array} array The array to use
function array_highest(arg1){
	i = 0
	highest = 0
repeat array_length(arg1)
{
if arg1[i] > highest
highest = arg1[i]
i ++
}
return highest
}