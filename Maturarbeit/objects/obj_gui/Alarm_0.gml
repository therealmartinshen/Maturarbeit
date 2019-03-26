/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0104D909
/// @DnDArgument : "code" "//Activated by scr_lifeloss$(13_10)$(13_10)//Gui Health Offset Catch-up$(13_10)if (playerHealthOffset > global.playerHealth && global.isMenu = false)$(13_10){$(13_10)	playerHealthOffset -= 0.001;$(13_10)	alarm_set(0,1)$(13_10)	obj_player.lifeSet = true;$(13_10)}$(13_10)else if (playerHealthOffset <= global.playerHealth) obj_player.lifeSet = false;"
//Activated by scr_lifeloss

//Gui Health Offset Catch-up
if (playerHealthOffset > global.playerHealth && global.isMenu = false)
{
	playerHealthOffset -= 0.001;
	alarm_set(0,1)
	obj_player.lifeSet = true;
}
else if (playerHealthOffset <= global.playerHealth) obj_player.lifeSet = false;