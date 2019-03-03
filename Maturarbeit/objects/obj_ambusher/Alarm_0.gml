/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64717E96
/// @DnDArgument : "code" "///@description ambusher set active$(13_10)var xdir = obj_player.x - x;$(13_10)isHurting = true;$(13_10)if (xdir < 0) image_xscale = -1;$(13_10)hsp = attackspd * sign(xdir);$(13_10)vsp = -2;$(13_10)alarm_set(1,180)$(13_10)"
///@description ambusher set active
var xdir = obj_player.x - x;
isHurting = true;
if (xdir < 0) image_xscale = -1;
hsp = attackspd * sign(xdir);
vsp = -2;
alarm_set(1,180)