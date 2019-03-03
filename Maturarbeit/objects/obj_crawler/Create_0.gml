/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7801378D
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)set = 0;$(13_10)$(13_10)sprite_index = type;$(13_10)$(13_10)alarm_set(0, tilemove * (tile / walkspd));"
hsp = 0;
vsp = 0;
set = 0;

sprite_index = type;

alarm_set(0, tilemove * (tile / walkspd));