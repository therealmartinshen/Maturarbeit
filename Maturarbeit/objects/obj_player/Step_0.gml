//Check if 'in Menu' and if 'Controls are enabled'.
if (!global.isMenu && global.isControl){
//VARIABLES
var iscrouching = false;

//FAIL STATE
if (global.playerHealthOffset == 0)
{
	//game_end();
}

//CROUCH
//must happen before horizontal movement, because of 'var iscrouching'
if (keyboard_check(vk_down) && place_meeting(x,y+1,obj_collisionmask) && crouch)
{
	iscrouching = true;
}

//GRAVITY
vsp = vsp + global.grv;
if (vsp > 4) vsp = 4;

//HORIZONTAL MOVEMENT
keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);
var move = keyright - keyleft;
//horizontal speed if player on ground and not crouching
if (place_meeting(x,y+1,obj_collisionmask) && !iscrouching) 
hsp = move * walkspd;
//horizontal speed if player is crouching
else if (iscrouching == true) 
hsp = move * walkspd * 0.4;
//horizontal speed when in air
else 
hsp = move * walkspd * 0.8;

//JUMP
if (place_meeting(x,y+1,obj_collisionmask) && keyboard_check_pressed(vk_space) && !iscrouching)
{
	vsp = -jumppow;
}


//WALL JUMP
var o = instance_place(x+3,bbox_bottom-32,obj_collisionmask);
var p = instance_place(x-3,bbox_bottom-32,obj_collisionmask);
if (keyboard_check_pressed(vk_space) && !wall)
{
	if (o != noone && o.jump_enabled) 
	{
		vsp = -jumppow;
		wall = true;
		alarm_set(1,room_speed*0.5);
	}
	if (p != noone && p.jump_enabled) 
	{
		vsp = -jumppow;
		wall = true;
		alarm_set(1,room_speed*0.5);
	}
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
	depth = layer_get_depth("NPC")+50;
	//no damage
	hurtable = false;
}
//exit hiding
else if (keyboard_check_pressed(vk_down) && depth > global.playerDepth)
{
	//crouch cooldown after exiting bush, so that player does not crouch immediately after exiting the bush
	alarm_set(0,room_speed*0.5);
	//change depth back to normal
	depth = global.playerDepth;
	//damage
	hurtable = true;
}
//remove control while behind bush
if (depth != global.playerDepth) {hsp = 0; vsp = 0;}

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