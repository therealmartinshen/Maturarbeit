/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00774B40
/// @DnDArgument : "code" "event_inherited();$(13_10)dir = 0;$(13_10)//destroy itself when > 5sec$(13_10)alarm_set(0,room_speed*4);"
event_inherited();
dir = 0;
//destroy itself when > 5sec
alarm_set(0,room_speed*4);