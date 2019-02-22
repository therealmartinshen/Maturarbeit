/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E45B4D0
/// @DnDArgument : "code" "xx = -xx;"
xx = -xx;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 241ACB92
/// @DnDArgument : "steps" "dirtoggle"
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, dirtoggle + alarm_get(0));