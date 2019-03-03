/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00774B40
/// @DnDArgument : "code" "event_inherited();$(13_10)dir = 0;$(13_10)//Set Destroy Event if > 5sec$(13_10)alarm_set(0,300);$(13_10)//create light$(13_10)light = instance_create_layer(x,y,"light",obj_tear_light);"
event_inherited();
dir = 0;
//Set Destroy Event if > 5sec
alarm_set(0,300);
//create light
light = instance_create_layer(x,y,"light",obj_tear_light);