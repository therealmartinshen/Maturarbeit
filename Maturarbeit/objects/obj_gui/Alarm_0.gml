/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0104D909
/// @DnDArgument : "code" "//Activated by scr_lifeloss$(13_10)$(13_10)//Gui Health Offset Catch-up$(13_10)if (global.playerHealthOffset > global.playerHealth && global.isMenu = false)$(13_10){$(13_10)	global.playerHealthOffset -= 0.001;$(13_10)	alarm_set(0,1)$(13_10)	obj_player.lifeSet = true;$(13_10)}$(13_10)else if (global.playerHealthOffset <= global.playerHealth)$(13_10){$(13_10)	global.playerHealthOffset = global.playerHealth;$(13_10)	obj_player.lifeSet = false;$(13_10)}"
//Activated by scr_lifeloss

//Gui Health Offset Catch-up
if (global.playerHealthOffset > global.playerHealth && global.isMenu = false)
{
	global.playerHealthOffset -= 0.001;
	alarm_set(0,1)
	obj_player.lifeSet = true;
}
else if (global.playerHealthOffset <= global.playerHealth)
{
	global.playerHealthOffset = global.playerHealth;
	obj_player.lifeSet = false;
}