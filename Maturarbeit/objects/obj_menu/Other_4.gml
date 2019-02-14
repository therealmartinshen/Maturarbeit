/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DC2AF72
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_start"
if(room == rm_start)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A95E8CF
	/// @DnDParent : 1DC2AF72
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isStart"
	isStart = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 624B07A3
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61DC4017
	/// @DnDParent : 624B07A3
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "isStart"
	isStart = false;
}