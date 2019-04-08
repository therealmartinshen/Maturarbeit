/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E940B7C
/// @DnDArgument : "var" "hurtable"
/// @DnDArgument : "value" "true"
if(hurtable == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7FE33D18
	/// @DnDParent : 5E940B7C
	/// @DnDArgument : "script" "scr_lifeloss"
	/// @DnDArgument : "arg" "other.damage"
	/// @DnDSaveInfo : "script" "8ef4634d-9782-40d5-b9e3-87e18417c2ee"
	script_execute(scr_lifeloss, other.damage);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0FCD7501
	/// @DnDParent : 5E940B7C
	/// @DnDArgument : "steps" "room_speed * 0.15"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, room_speed * 0.15);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38BAE03B
	/// @DnDParent : 5E940B7C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "set1"
	set1 = false;
}