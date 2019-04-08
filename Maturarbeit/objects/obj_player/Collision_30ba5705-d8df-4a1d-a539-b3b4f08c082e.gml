/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E072D34
/// @DnDArgument : "var" "global.playerHealth"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(!(global.playerHealth >= 1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41384FA7
	/// @DnDParent : 7E072D34
	/// @DnDArgument : "expr" "0.1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerHealth"
	global.playerHealth += 0.1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5180504F
	/// @DnDApplyTo : other
	/// @DnDParent : 7E072D34
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47ACAAE8
/// @DnDArgument : "var" "global.playerHealth"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.playerHealth >= 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A59C1B0
	/// @DnDParent : 47ACAAE8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.playerHealth"
	global.playerHealth = 1;
}