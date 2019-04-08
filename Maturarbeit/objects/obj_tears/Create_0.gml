/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00774B40
/// @DnDArgument : "code" "event_inherited();$(13_10)dir = 0;$(13_10)Visible = true;$(13_10)//destroy itself when for 3sec alive$(13_10)alarm_set(0,room_speed*3);"
event_inherited();
dir = 0;
Visible = true;
//destroy itself when for 3sec alive
alarm_set(0,room_speed*3);