/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49EC9503
/// @DnDArgument : "code" "event_inherited()$(13_10)x = obj_player.x;$(13_10)y = obj_player.y;$(13_10)$(13_10)//LIGHT SWITCHING$(13_10)if (keyboard_check_pressed(ord("E")) && light_switch==false && global.playerLight > 0)$(13_10){$(13_10)	light_initial_radius = light_initial_radius * 3;$(13_10)	color = $FF0069FF;$(13_10)	light_switch = true;$(13_10)	visible=true;$(13_10)}$(13_10)else if ((keyboard_check_pressed(ord("E")) && light_switch==true) || global.playerLight <= 0)$(13_10){$(13_10)	light_initial_radius = 64;$(13_10)	color = $FA282828;$(13_10)	light_switch = false;$(13_10)}$(13_10)$(13_10)//LIGHT BAR CONTROL$(13_10)if (light_switch)$(13_10){$(13_10)	global.playerLight -= 0.0005$(13_10)}"
event_inherited()
x = obj_player.x;
y = obj_player.y;

//LIGHT SWITCHING
if (keyboard_check_pressed(ord("E")) && light_switch==false && global.playerLight > 0)
{
	light_initial_radius = light_initial_radius * 3;
	color = $FF0069FF;
	light_switch = true;
	visible=true;
}
else if ((keyboard_check_pressed(ord("E")) && light_switch==true) || global.playerLight <= 0)
{
	light_initial_radius = 64;
	color = $FA282828;
	light_switch = false;
}

//LIGHT BAR CONTROL
if (light_switch)
{
	global.playerLight -= 0.0005
}