/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B55F8B3
/// @DnDArgument : "code" "//VARIABLES$(13_10)var other_obj = noone;$(13_10)$(13_10)//when red light is on, scan for collision with obj_player inside collision_circle with radius lightrad$(13_10)if (checkforPlayer == true) var other_obj = collision_circle(x,y,lightrad * tile,obj_player,false,true);$(13_10)//if player in red light, apply damage to obj_player$(13_10)if (other_obj != noone)$(13_10){$(13_10)	with(obj_player)$(13_10)	{$(13_10)		if (hurtable)$(13_10)		{$(13_10)			script_execute(scr_lifeloss(0.25))$(13_10)			alarm_set(2,room_speed*0.15);$(13_10)		}$(13_10)	}$(13_10)}"
//VARIABLES
var other_obj = noone;

//when red light is on, scan for collision with obj_player inside collision_circle with radius lightrad
if (checkforPlayer == true) var other_obj = collision_circle(x,y,lightrad * tile,obj_player,false,true);
//if player in red light, apply damage to obj_player
if (other_obj != noone)
{
	with(obj_player)
	{
		if (hurtable)
		{
			script_execute(scr_lifeloss(0.25))
			alarm_set(2,room_speed*0.15);
		}
	}
}