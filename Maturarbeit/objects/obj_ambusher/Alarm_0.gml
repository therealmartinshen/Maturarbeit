/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64717E96
/// @DnDArgument : "code" "///@description ambusher set active$(13_10)//Calculate x difference between player.x and ambusher.x$(13_10)var xdir = obj_player.x - x;$(13_10)//enable damage$(13_10)isHurting = true;$(13_10)//Sprite Management$(13_10)if (xdir < 0) image_xscale = -1;$(13_10)//set HSP/VSP for leaping$(13_10)hsp = attackspd * sign(xdir);$(13_10)vsp = -2;$(13_10)//destroy itself after 3 seconds$(13_10)alarm_set(1,room_speed*3)$(13_10)"
///@description ambusher set active
//Calculate x difference between player.x and ambusher.x
var xdir = obj_player.x - x;
//enable damage
isHurting = true;
//Sprite Management
if (xdir < 0) image_xscale = -1;
//set HSP/VSP for leaping
hsp = attackspd * sign(xdir);
vsp = -2;
//destroy itself after 3 seconds
alarm_set(1,room_speed*3)