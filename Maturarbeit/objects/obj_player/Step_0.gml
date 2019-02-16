/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3ACDA084
/// @DnDArgument : "code" "//Player Movement$(13_10)keyleft = keyboard_check(vk_left);$(13_10)keyright = keyboard_check(vk_right);$(13_10)var move = keyright - keyleft;$(13_10)hsp = move * walkspd;$(13_10)$(13_10)//vertical movement$(13_10)$(13_10)//(Flying: for testing purposes only)$(13_10)/*keyup = keyboard_check(vk_up);$(13_10)keydown = keyboard_check(vk_down);$(13_10)var move = keydown - keyup;$(13_10)vsp = move * walkspd;*/$(13_10)//gravity$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//jump$(13_10)keyjump = keyboard_check(vk_space);$(13_10)if (place_meeting(x,y+1,obj_collisionmask)) && (keyjump)$(13_10){$(13_10)	vsp = -jumppow;$(13_10)}"
//Player Movement
keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);
var move = keyright - keyleft;
hsp = move * walkspd;

//vertical movement

//(Flying: for testing purposes only)
/*keyup = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
var move = keydown - keyup;
vsp = move * walkspd;*/
//gravity
vsp = vsp + grv;

//jump
keyjump = keyboard_check(vk_space);
if (place_meeting(x,y+1,obj_collisionmask)) && (keyjump)
{
	vsp = -jumppow;
}/**/

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7229C9D8
/// @DnDArgument : "script" "scr_collision"
/// @DnDSaveInfo : "script" "399c20bb-b040-4c97-ba2b-95b63c0d4cb0"
script_execute(scr_collision);

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 6509C584
/// @DnDArgument : "margin" "16"
move_wrap(1, 1, 16);