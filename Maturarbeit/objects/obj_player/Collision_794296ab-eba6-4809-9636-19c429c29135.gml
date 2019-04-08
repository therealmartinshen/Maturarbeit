/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47DB21BD
/// @DnDArgument : "var" "global.playerLight"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(!(global.playerLight >= 1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A18FB81
	/// @DnDParent : 47DB21BD
	/// @DnDArgument : "expr" "0.1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerLight"
	global.playerLight += 0.1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A39B356
	/// @DnDApplyTo : other
	/// @DnDParent : 47DB21BD
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46C2318E
/// @DnDArgument : "var" "global.playerLight"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.playerLight >= 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EEFCEE8
	/// @DnDParent : 46C2318E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.playerLight"
	global.playerLight = 1;
}