/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 16CF90E0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-8"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "tear"
/// @DnDArgument : "objectid" "obj_tears"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "cb88471c-0cf4-4d8e-814d-a32b60aa3206"
tear = instance_create_layer(x + 0, y + -8, "Player", obj_tears);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B52495A
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "var" "tear.dir"
tear.dir = direction;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31FBD39F
/// @DnDArgument : "expr" "tearspd"
/// @DnDArgument : "var" "tear.t_speed"
tear.t_speed = tearspd;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 749BDC51
/// @DnDArgument : "steps" "bullet_interval * room_speed"
alarm_set(0, bullet_interval * room_speed);