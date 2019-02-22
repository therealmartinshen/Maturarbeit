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
	/// @DnDArgument : "xpos" "view_wport[0] / 2"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "view_hport[0] / 2 + offset"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "button1"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDArgument : "layer" ""gui""
	/// @DnDSaveInfo : "objectid" "8d6428ac-f7a0-474d-be2e-ddf46283eebf"
	var button1 = instance_create_layer(x + view_wport[0] / 2, y + view_hport[0] / 2 + offset, "gui", obj_button);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4E6800EE
	/// @DnDParent : 35AC971D
	/// @DnDArgument : "xpos" "view_wport[0] / 2"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "view_hport[0] / 2 "
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "button2"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDArgument : "layer" ""gui""
	/// @DnDSaveInfo : "objectid" "8d6428ac-f7a0-474d-be2e-ddf46283eebf"
	var button2 = instance_create_layer(x + view_wport[0] / 2, y + view_hport[0] / 2 , "gui", obj_button);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4BEC3C4F
	/// @DnDParent : 35AC971D
	/// @DnDArgument : "xpos" "view_wport[0] / 2"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "view_hport[0] / 2 - offset"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "button3"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDArgument : "layer" ""gui""
	/// @DnDSaveInfo : "objectid" "8d6428ac-f7a0-474d-be2e-ddf46283eebf"
	var button3 = instance_create_layer(x + view_wport[0] / 2, y + view_hport[0] / 2 - offset, "gui", obj_button);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0F8C1F5F
	/// @DnDParent : 35AC971D
	/// @DnDArgument : "code" "button1.buttonMode = 0;$(13_10)button2.buttonMode = 1;$(13_10)button3.buttonMode = 2;"
	button1.buttonMode = 0;
	button2.buttonMode = 1;
	button3.buttonMode = 2;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 718D1CC4
	/// @DnDApplyTo : 8d6428ac-f7a0-474d-be2e-ddf46283eebf
	/// @DnDParent : 35AC971D
	with(obj_button) {
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 16C3AA85
		/// @DnDParent : 718D1CC4
		/// @DnDArgument : "expr" "buttonMode"
		var l16C3AA85_0 = buttonMode;
		switch(l16C3AA85_0)
		{
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 691AF8E1
			/// @DnDParent : 16C3AA85
			case 0:
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 05968CC3
				/// @DnDParent : 691AF8E1
				/// @DnDArgument : "spriteind" "Button_1"
				/// @DnDSaveInfo : "spriteind" "c4f28766-204c-4b74-9fcc-ffa4b7fb754b"
				sprite_index = Button_1;
				image_index = 0;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 35D3F4DE
			/// @DnDParent : 16C3AA85
			/// @DnDArgument : "const" "1"
			case 1:
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 022411C4
				/// @DnDParent : 35D3F4DE
				/// @DnDArgument : "spriteind" "Button_2"
				/// @DnDSaveInfo : "spriteind" "a283e39e-84e8-41e5-a74a-b3e703973508"
				sprite_index = Button_2;
				image_index = 0;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 5D7F9238
			/// @DnDParent : 16C3AA85
			/// @DnDArgument : "const" "2"
			case 2:
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 712FAD62
				/// @DnDParent : 5D7F9238
				/// @DnDArgument : "spriteind" "Button_3"
				/// @DnDSaveInfo : "spriteind" "7d6c888a-dc33-4914-b7a0-f6d4e322f434"
				sprite_index = Button_3;
				image_index = 0;
				break;
		}
	}
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