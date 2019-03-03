/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B55F8B3
/// @DnDArgument : "code" "var other_obj = noone;$(13_10)if (checkforPlayer == true) var other_obj = collision_circle(x,y,lightrad * tile,obj_player,false,true);$(13_10)if (other_obj != noone)$(13_10){$(13_10)	global.playerHealth -= damage;$(13_10)	instance_destroy()$(13_10)	if (!obj_player.lifeSet)$(13_10)	{$(13_10)	with(obj_gui) alarm_set(0, 60);$(13_10)	};$(13_10)}"
var other_obj = noone;
if (checkforPlayer == true) var other_obj = collision_circle(x,y,lightrad * tile,obj_player,false,true);
if (other_obj != noone)
{
	global.playerHealth -= damage;
	instance_destroy()
	if (!obj_player.lifeSet)
	{
	with(obj_gui) alarm_set(0, 60);
	};
}