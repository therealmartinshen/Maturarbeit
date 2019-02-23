if (!global.isMenu){
//variables
var iscrouching = false;

//crouch *must happen before horizontal movement, because of var iscrouching
if (keyboard_check(vk_down) && place_meeting(x,y+1,obj_collisionmask))
{
	iscrouching = true;
}

//horizontal movement
keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);
var move = keyright - keyleft;
if (place_meeting(x,y+1,obj_collisionmask) && !iscrouching) hsp = move * walkspd;
else if (iscrouching == true) hsp = move * walkspd * 0.4;
else hsp = move * walkspd * 0.65;

//vertical movement
//(Flying: for testing purposes only)
/*keyup = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
var move = keydown - keyup;
vsp = move * walkspd;*/

//gravity
vsp = vsp + global.grv;

//jump
keyjump = keyboard_check(vk_space);
if ((place_meeting(x,y+1,obj_collisionmask)) && (keyjump) && (!iscrouching))
{
	vsp = -jumppow;
}

//collision
script_execute(scr_collision);

//Sprite Management
if(hsp == 0 && iscrouching == false) sprite_index = spr_player_idle;
if(hsp > 0 && iscrouching == false) {sprite_index = spr_player_run; image_xscale = 1;}
if(hsp < 0 && iscrouching == false) {sprite_index = spr_player_run; image_xscale = -1;}
if(hsp == 0 && iscrouching == true) sprite_index = spr_player_crouch;
if(hsp > 0 && iscrouching == true) {sprite_index = spr_player_crouch;; image_xscale = 1;}
if(hsp < 0 && iscrouching == true) {sprite_index = spr_player_crouch;; image_xscale = -1;}

//Movement execution
x += hsp;
y += vsp;
}