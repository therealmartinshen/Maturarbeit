/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7801378D
/// @DnDArgument : "code" "//VARIABLES$(13_10)hsp = 0;$(13_10)vsp = 0;$(13_10)set = 0;$(13_10)//SPRITE MANAGEMENT$(13_10)sprite_index = type;$(13_10)//SET THE ALARM FOR THE FIRST TIME$(13_10)alarm_set(0, tilemove * (tile / walkspd));"
//VARIABLES
hsp = 0;
vsp = 0;
set = 0;
//SPRITE MANAGEMENT
sprite_index = type;
//SET THE ALARM FOR THE FIRST TIME
alarm_set(0, tilemove * (tile / walkspd));