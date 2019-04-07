/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11F06D5A
/// @DnDArgument : "code" "//Variables 'hurtable' and 'lifeSet' must be existent in obj for this script$(13_10)$(13_10)if (hurtable)$(13_10){$(13_10)	audio_play_sound(sTest, 0, 0);$(13_10)	var lifeloss = argument0;$(13_10)	global.playerHealth -= lifeloss;$(13_10)	global.isControl = false;$(13_10)	if (!lifeSet)$(13_10)	{$(13_10)		with(obj_gui) alarm_set(0, room_speed);$(13_10)	}$(13_10)	sprite_index = spr_player_hurt;$(13_10)	hurtable = false;$(13_10)}"
//Variables 'hurtable' and 'lifeSet' must be existent in obj for this script

if (hurtable)
{
	audio_play_sound(sTest, 0, 0);
	var lifeloss = argument0;
	global.playerHealth -= lifeloss;
	global.isControl = false;
	if (!lifeSet)
	{
		with(obj_gui) alarm_set(0, room_speed);
	}
	sprite_index = spr_player_hurt;
	hurtable = false;
}