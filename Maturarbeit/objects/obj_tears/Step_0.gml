/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69755512
/// @DnDArgument : "code" "//motionsetting$(13_10)var pdir = point_direction(x, y, x + dir, y);$(13_10)if (global.isMenu)$(13_10)	motion_set(pdir,0);$(13_10)else$(13_10)	motion_set (pdir,t_speed);$(13_10)$(13_10)//collision checking$(13_10)if (place_meeting(x,y,obj_collisionmask))$(13_10){$(13_10)	instance_destroy();$(13_10)}$(13_10)if (place_meeting(x,y,obj_player))$(13_10){$(13_10)	with (obj_player)$(13_10)	{$(13_10)		if (hurtable)$(13_10)		{$(13_10)			script_execute(scr_lifeloss(0.34));$(13_10)			alarm_set(2,room_speed*0.15);$(13_10)		}$(13_10)	}$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)//TEARS VISIBILITY$(13_10)if (point_in_circle(x,y,obj_player.x,obj_player.y,64*2.5) && obj_player_light.light_switch == true)$(13_10)	visible = false;$(13_10)else if (Visible == true)$(13_10)	visible = true;"
//motionsetting
var pdir = point_direction(x, y, x + dir, y);
if (global.isMenu)
	motion_set(pdir,0);
else
	motion_set (pdir,t_speed);

//collision checking
if (place_meeting(x,y,obj_collisionmask))
{
	instance_destroy();
}
if (place_meeting(x,y,obj_player))
{
	with (obj_player)
	{
		if (hurtable)
		{
			script_execute(scr_lifeloss(0.34));
			alarm_set(2,room_speed*0.15);
		}
	}
	instance_destroy();
}

//TEARS VISIBILITY
if (point_in_circle(x,y,obj_player.x,obj_player.y,64*2.5) && obj_player_light.light_switch == true)
	visible = false;
else if (Visible == true)
	visible = true;