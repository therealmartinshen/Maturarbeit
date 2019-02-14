/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35AC971D
/// @DnDInput : 2
/// @DnDArgument : "expr" "isMenu"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "isStart"
/// @DnDArgument : "not_1" "1"
if(!(isMenu) && !(isStart))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40ADECB0
	/// @DnDParent : 35AC971D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isMenu"
	isMenu = true;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67D98D59
	/// @DnDParent : 35AC971D
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height - offset"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDArgument : "layer" ""Menu_Items""
	/// @DnDSaveInfo : "objectid" "8d6428ac-f7a0-474d-be2e-ddf46283eebf"
	instance_create_layer(room_width/2, room_height - offset, "Menu_Items", obj_button);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4E6800EE
	/// @DnDParent : 35AC971D
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height/3 * 2 - offset"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDArgument : "layer" ""Menu_Items""
	/// @DnDSaveInfo : "objectid" "8d6428ac-f7a0-474d-be2e-ddf46283eebf"
	instance_create_layer(room_width/2, room_height/3 * 2 - offset, "Menu_Items", obj_button);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4BEC3C4F
	/// @DnDParent : 35AC971D
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height/3 - offset"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDArgument : "layer" ""Menu_Items""
	/// @DnDSaveInfo : "objectid" "8d6428ac-f7a0-474d-be2e-ddf46283eebf"
	instance_create_layer(room_width/2, room_height/3 - offset, "Menu_Items", obj_button);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 334F23BA
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2ABAB4F9
	/// @DnDParent : 334F23BA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "isMenu"
	isMenu = false;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 4CD9C425
	/// @DnDApplyTo : 8d6428ac-f7a0-474d-be2e-ddf46283eebf
	/// @DnDParent : 334F23BA
	with(obj_button) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2FD5CABB
		/// @DnDParent : 4CD9C425
		instance_destroy();
	}
}