/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31B88089
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_start"
if(!(room == rm_start))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1F2DB69A
	/// @DnDParent : 31B88089
	/// @DnDArgument : "x" "global.dx / 2 - 175"
	/// @DnDArgument : "y" "16"
	/// @DnDArgument : "sprite" "spr_healthbar_back"
	/// @DnDSaveInfo : "sprite" "64103e49-7991-46aa-a289-6be9e6cbe444"
	draw_sprite(spr_healthbar_back, 0, global.dx / 2 - 175, 16);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 231D7A67
	/// @DnDParent : 31B88089
	/// @DnDArgument : "x" "global.dx / 2 - 175"
	/// @DnDArgument : "y" "16"
	/// @DnDArgument : "xscale" "playerHealthOffset"
	/// @DnDArgument : "sprite" "spr_healthbar_offset"
	/// @DnDSaveInfo : "sprite" "f4e6d87f-8c8b-4315-a60d-816835d63086"
	draw_sprite_ext(spr_healthbar_offset, 0, global.dx / 2 - 175, 16, playerHealthOffset, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4ED92757
	/// @DnDParent : 31B88089
	/// @DnDArgument : "x" "global.dx / 2 - 175"
	/// @DnDArgument : "y" "16"
	/// @DnDArgument : "xscale" "global.playerHealth"
	/// @DnDArgument : "sprite" "spr_healthbar"
	/// @DnDSaveInfo : "sprite" "42ecc4cd-07ce-4d2c-b1d5-4ca05367dd06"
	draw_sprite_ext(spr_healthbar, 0, global.dx / 2 - 175, 16, global.playerHealth, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
}