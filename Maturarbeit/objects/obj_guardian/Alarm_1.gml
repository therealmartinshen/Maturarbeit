/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EA1EC2D
/// @DnDArgument : "code" "///@description Actions of light off$(13_10)$(13_10)checkforPlayer = false;$(13_10)$(13_10)instance_destroy(light);"
///@description Actions of light off

checkforPlayer = false;

instance_destroy(light);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6891DD5C
/// @DnDArgument : "steps" "lightoff * 60"
alarm_set(0, lightoff * 60);