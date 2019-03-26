/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69755512
/// @DnDArgument : "code" "//motionsetting$(13_10)var pdir = point_direction(x, y, x + dir, y);$(13_10)motion_set (pdir,t_speed);$(13_10)//collision checking$(13_10)if (place_meeting(x,y,obj_collisionmask))$(13_10){$(13_10)	instance_destroy();$(13_10)}$(13_10)if (place_meeting(x,y,obj_player))$(13_10){$(13_10)	with(obj_player) script_execute(scr_lifeloss(0.1));$(13_10)	instance_destroy();$(13_10)}"
//motionsetting
var pdir = point_direction(x, y, x + dir, y);
motion_set (pdir,t_speed);
//collision checking
if (place_meeting(x,y,obj_collisionmask))
{
	instance_destroy();
}
if (place_meeting(x,y,obj_player))
{
	with(obj_player) script_execute(scr_lifeloss(0.1));
	instance_destroy();
}