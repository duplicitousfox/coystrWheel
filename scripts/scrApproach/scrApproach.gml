/// @param start
/// @param end
/// @param shift
function scrApproach(){
	if (argument0 < argument1) {
		return min (argument0 + argument2, argument1);
	} else {
		return max(argument0 - argument2, argument1);
	}
}