/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 430712EC
/// @DnDArgument : "expr" "buttonMode"
var l430712EC_0 = buttonMode;
switch(l430712EC_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7BE128E1
	/// @DnDParent : 430712EC
	case 0:
		/// @DnDAction : YoYo Games.Game.End_Game
		/// @DnDVersion : 1
		/// @DnDHash : 3850B478
		/// @DnDParent : 7BE128E1
		game_end();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 14C12BB6
	/// @DnDParent : 430712EC
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 1A267324
		/// @DnDParent : 14C12BB6
		break;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 06B30A68
	/// @DnDParent : 430712EC
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 278A2270
		/// @DnDApplyTo : 8d6428ac-f7a0-474d-be2e-ddf46283eebf
		/// @DnDParent : 06B30A68
		with(obj_button) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6926EEEB
		/// @DnDApplyTo : 34c7aac4-39bf-4544-be94-afc5cae5b2e7
		/// @DnDParent : 06B30A68
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "global.isMenu"
		with(obj_gui) {
		global.isMenu = false;
		
		}
		break;
}