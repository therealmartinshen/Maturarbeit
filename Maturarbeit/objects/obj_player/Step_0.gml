/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3ACDA084
/// @DnDArgument : "code" "if (!obj_menu.isMenu){$(13_10)//MOVEMENT$(13_10)//horizontal movement$(13_10)keyleft = keyboard_check(vk_left);$(13_10)keyright = keyboard_check(vk_right);$(13_10)var move = keyright - keyleft;$(13_10)hsp = move * walkspd;$(13_10)$(13_10)//vertical movement$(13_10)//(Flying: for testing purposes only)$(13_10)/*keyup = keyboard_check(vk_up);$(13_10)keydown = keyboard_check(vk_down);$(13_10)var move = keydown - keyup;$(13_10)vsp = move * walkspd;*/$(13_10)$(13_10)//gravity$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//crouch$(13_10)var iscrouching = false;$(13_10)if (keyboard_check(vk_down))$(13_10){$(13_10)	sprite_index = spr_player_crouch;$(13_10)	iscrouching = true;$(13_10)}$(13_10)if (keyboard_check_released(vk_down))$(13_10){$(13_10)	sprite_index = spr_player_idle;$(13_10)	iscrouching = false;$(13_10)}$(13_10)$(13_10)//jump$(13_10)keyjump = keyboard_check(vk_space);$(13_10)if (place_meeting(x,y+1,obj_collisionmask)) && (keyjump) && (!iscrouching)$(13_10){$(13_10)	vsp = -jumppow;$(13_10)}$(13_10)$(13_10)//collision$(13_10)script_execute(scr_collision);$(13_10)$(13_10)//Movement execution$(13_10)x += hsp;$(13_10)y += vsp;$(13_10)}$(13_10)"
if (!obj_menu.isMenu){
//MOVEMENT
//horizontal movement
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

//crouch
var iscrouching = false;
if (keyboard_check(vk_down))
{
	sprite_index = spr_player_crouch;
	iscrouching = true;
}
if (keyboard_check_released(vk_down))
{
	sprite_index = spr_player_idle;
	iscrouching = false;
}

//jump
keyjump = keyboard_check(vk_space);
if (place_meeting(x,y+1,obj_collisionmask)) && (keyjump) && (!iscrouching)
{
	vsp = -jumppow;
}

//collision
script_execute(scr_collision);

//Movement execution
x += hsp;
y += vsp;
}
/**/

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 6509C584
/// @DnDArgument : "margin" "16"
move_wrap(1, 1, 16);