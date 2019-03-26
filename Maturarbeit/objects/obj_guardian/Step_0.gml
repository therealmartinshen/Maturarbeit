/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B55F8B3
/// @DnDArgument : "code" "//VARIABLES$(13_10)var other_obj = noone;$(13_10)$(13_10)//when red light is on, scan for collision with obj_player inside collision_circle with radius lightrad$(13_10)if (checkforPlayer == true) var other_obj = collision_circle(x,y,lightrad * tile,obj_player,false,true);$(13_10)//if player in red light, apply damage to obj_player$(13_10)if (other_obj != noone)$(13_10){$(13_10)	global.playerHealth -= damage;$(13_10)	if (!obj_player.lifeSet)$(13_10)	{$(13_10)	with(obj_gui) alarm_set(0, 60);$(13_10)	}$(13_10)	//destroy light and obj_guardian$(13_10)	instance_destroy(light);$(13_10)	instance_destroy();$(13_10)}"
//VARIABLES
var other_obj = noone;

//when red light is on, scan for collision with obj_player inside collision_circle with radius lightrad
if (checkforPlayer == true) var other_obj = collision_circle(x,y,lightrad * tile,obj_player,false,true);
//if player in red light, apply damage to obj_player
if (other_obj != noone)
{
	global.playerHealth -= damage;
	if (!obj_player.lifeSet)
	{
	with(obj_gui) alarm_set(0, 60);
	}
	//destroy light and obj_guardian
	instance_destroy(light);
	instance_destroy();
}