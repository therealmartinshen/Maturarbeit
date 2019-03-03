/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 606785AE
/// @DnDArgument : "code" "vsp += global.grv;$(13_10)$(13_10)//follow mechanic$(13_10)if (!active)$(13_10){$(13_10)	sprite_index = spr_stalker_idle;$(13_10)	//AI Player detection$(13_10)	if (set = 0 && collision_line(x - sightlineR * tile, y, x + sightlineR * tile, y, obj_player, false, true))$(13_10)	{$(13_10)		alarm_set(0,timeToReact);$(13_10)		set = 1;$(13_10)	}$(13_10)}$(13_10)else if (active)$(13_10){$(13_10)	sprite_index = spr_stalker_attack;$(13_10)	//let him stay on track$(13_10)	while (place_meeting(x,y,obj_collisionmask)) y -= 1;$(13_10)	//climb if faced by an obstacle$(13_10)	if (hsp == 0) {vsp = -jumppow};$(13_10)	hsp = sign(obj_player.x - x) * walkspd;$(13_10)	//lose sight of Player if hidden in bush$(13_10)	if (obj_player.depth > global.playerDepth) {active = false; hsp = 0; set=0;}$(13_10)	//sprite Management$(13_10)	if (hsp < 0) image_xscale = -1;$(13_10)	if (hsp > 0) image_xscale = 1;$(13_10)}$(13_10)$(13_10)script_execute(scr_collision);$(13_10)$(13_10)x += hsp;$(13_10)y += vsp;"
vsp += global.grv;

//follow mechanic
if (!active)
{
	sprite_index = spr_stalker_idle;
	//AI Player detection
	if (set = 0 && collision_line(x - sightlineR * tile, y, x + sightlineR * tile, y, obj_player, false, true))
	{
		alarm_set(0,timeToReact);
		set = 1;
	}
}
else if (active)
{
	sprite_index = spr_stalker_attack;
	//let him stay on track
	while (place_meeting(x,y,obj_collisionmask)) y -= 1;
	//climb if faced by an obstacle
	if (hsp == 0) {vsp = -jumppow};
	hsp = sign(obj_player.x - x) * walkspd;
	//lose sight of Player if hidden in bush
	if (obj_player.depth > global.playerDepth) {active = false; hsp = 0; set=0;}
	//sprite Management
	if (hsp < 0) image_xscale = -1;
	if (hsp > 0) image_xscale = 1;
}

script_execute(scr_collision);

x += hsp;
y += vsp;