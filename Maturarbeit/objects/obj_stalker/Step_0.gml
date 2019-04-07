vsp += global.grv;

//FOLLOW MECHANIC
if (!active)
{
	sprite_index = spr_stalker_idle;
	//First check player in collision with collision_line a.k.a sightline and set = 0
	//activate second check
	if (set = 0 && collision_line(x - sightlineR * tile, y, x + sightlineR * tile, y, obj_player, false, true))
	{
		alarm_set(0,timeToReact * room_speed);
		//set ensures that this command is only called once during the alarm countdown
		set = 1;
	}
}
else if (active)
{
	//sprite management
	sprite_index = spr_stalker_attack;
	//let him not get stuck in ground
	while (place_meeting(x,y,obj_collisionmask)) y -= 1;
	//climb if faced by an obstacle
	if (hsp == 0) {vsp = -jumppow};
	//assign HSP/VSP
	hsp = sign(obj_player.x - x) * walkspd;
	//lose sight of player if player is behind something
	if (obj_player.depth > global.playerDepth) {active = false; hsp = 0; set=0;}
	//Sprite Management
	if (hsp < 0) image_xscale = -1;
	if (hsp > 0) image_xscale = 1;
}

script_execute(scr_collision);

x += hsp;
y += vsp;