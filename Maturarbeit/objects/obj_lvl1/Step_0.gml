/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DE5A8BB
/// @DnDArgument : "code" "if (room == rm_level_1)$(13_10){$(13_10)	if (collision_line(1440,352,1440,300,obj_player,false,true) && set==0)$(13_10)	{$(13_10)		alarm_set(0,room_speed*1);$(13_10)		set = 1;$(13_10)	}$(13_10)}"
if (room == rm_level_1)
{
	if (collision_line(1440,352,1440,300,obj_player,false,true) && set==0)
	{
		alarm_set(0,room_speed*1);
		set = 1;
	}
}