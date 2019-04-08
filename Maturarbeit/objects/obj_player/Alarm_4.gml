/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5951A7CC
/// @DnDArgument : "code" "///@description Blinking$(13_10)if (!set1)$(13_10){$(13_10)	visible = false;$(13_10)	alarm_set(5,room_speed/15);$(13_10)}"
///@description Blinking
if (!set1)
{
	visible = false;
	alarm_set(5,room_speed/15);
}