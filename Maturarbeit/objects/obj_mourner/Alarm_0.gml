/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 16CF90E0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-8"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_tears"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "cb88471c-0cf4-4d8e-814d-a32b60aa3206"
instance_create_layer(x + 0, y + -8, "Player", obj_tears);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B52495A
/// @DnDArgument : "expr" "sightlinex"
/// @DnDArgument : "var" "obj_tears.dir"
obj_tears.dir = sightlinex;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 770E661B
/// @DnDArgument : "var" "see"
see = 0;