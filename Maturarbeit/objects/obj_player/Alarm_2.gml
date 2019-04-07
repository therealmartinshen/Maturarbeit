/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CF0AD0A
/// @DnDArgument : "code" "///@description Regain control$(13_10)global.isControl = true;$(13_10)alarm_set(3,room_speed*1.5)$(13_10)y -= 1;"
///@description Regain control
global.isControl = true;
alarm_set(3,room_speed*1.5)
y -= 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0E2A74DB
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 1);