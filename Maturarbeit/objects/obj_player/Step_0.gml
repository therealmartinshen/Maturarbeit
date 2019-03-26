//Check if 'in Menu' and if 'Controls are enabled'.
if (!global.isMenu && global.isControl){
//VARIABLES
var iscrouching = false;

//CROUCH
//must happen before horizontal movement, because of 'var iscrouching'
if (keyboard_check(vk_down) && place_meeting(x,y+1,obj_collisionmask) && crouch)
{
	iscrouching = true;
}

//HORIZONTAL MOVEMENT
keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);
var move = keyright - keyleft;
//horizontal speed if player on ground and not crouching
if (place_meeting(x,y+1,obj_collisionmask) && !iscrouching) hsp = move * walkspd;
//horizontal speed if player is crouching
else if (iscrouching == true) hsp = move * walkspd * 0.4;
//horizontal speed when in air
else hsp = move * walkspd * 0.65;

//GRAVITY
vsp = vsp + global.grv;

//JUMP
//only jump if not crouching and on ground
if ((place_meeting(x,y+1,obj_collisionmask)) && (keyboard_check(vk_space)) && (!iscrouching))
{
	vsp = -jumppow;
}

//HIDE IN BUSH
//get the instance of the bush in collision
var xx = instance_place(x,y,obj_bush);
//hiding (bush must be existent, must be on ground, bush must be hideable)
if (keyboard_check_pressed(vk_up) && xx != noone && place_meeting(x,y+1,obj_collisionmask) && xx.hideable) 
{
	//crouch must exist in order for crouch ability delay (Alarm 0) to function.
	crouch = false;
	//increase depth so Player appears behind bush
	depth = global.playerDepth + 150;
	//remove collision
	mask_index = spr_nocollision_ground;
}
//exit hiding
else if (keyboard_check_pressed(vk_down) && depth > global.playerDepth)
{
	//crouch cooldown after exiting bush, so that player does not crouch immediately after exiting the bush
	alarm_set(0,30);
	//change depth back to normal
	depth = global.playerDepth;
	//add coliision
	mask_index = spr_player_idle;
	//go one pixel up in order to prevent player being stuck in ground
	y -= 1;
}

//COLLISION
script_execute(scr_collision);

//SPRITE MANAGEMENT
//running
if(hsp == 0 && iscrouching == false) sprite_index = spr_player_idle;
if(hsp > 0 && iscrouching == false) {sprite_index = spr_player_run; image_xscale = 1;}
if(hsp < 0 && iscrouching == false) {sprite_index = spr_player_run; image_xscale = -1;}
//crouching
if(hsp == 0 && iscrouching == true) sprite_index = spr_player_crouch;
if(hsp > 0 && iscrouching == true) {sprite_index = spr_player_crouch; image_xscale = 1;}
if(hsp < 0 && iscrouching == true) {sprite_index = spr_player_crouch; image_xscale = -1;}

//MOVEMENT EXECUTION
x += hsp;
y += vsp;
}