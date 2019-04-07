/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 194E89F2
/// @DnDArgument : "code" "/// @description Action of light on$(13_10)$(13_10)//light switching on$(13_10)//CODE$(13_10)$(13_10)//checking for player collision == true$(13_10)checkforPlayer = true;"
/// @description Action of light on

//light switching on
//CODE

//checking for player collision == true
checkforPlayer = true;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1E116E4A
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "var" "light"
/// @DnDArgument : "objectid" "obj_guardian_searchlight"
/// @DnDArgument : "layer" ""light""
/// @DnDSaveInfo : "objectid" "a08d639c-2811-4f1a-9f5e-01e6b1e932c6"
light = instance_create_layer(x, y, "light", obj_guardian_searchlight);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 086A26C4
/// @DnDArgument : "steps" "lighton * room_speed"
/// @DnDArgument : "alarm" "1"
alarm_set(1, lighton * room_speed);