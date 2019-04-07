/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E489E88
/// @DnDArgument : "code" "//gravity$(13_10)vsp += global.grv;$(13_10)//collision$(13_10)script_execute(scr_collision);$(13_10)//SIGHT$(13_10)if ((collision_line(x,y,x + sightlinex * tile,y,obj_player,false,true)) && see = 0)$(13_10){$(13_10)	see = 1;$(13_10)	tear = instance_create_layer(x + 0, y - 8, "Player", obj_tears);$(13_10)	//Set tear flight direction$(13_10)	tear.dir = sightlinex;$(13_10)	//Set tear speed$(13_10)	tear.t_speed = tearspd;$(13_10)	alarm_set(0, bullet_interval * room_speed);$(13_10)}$(13_10)//movement execution$(13_10)x += hsp;$(13_10)y += vsp;"
//gravity
vsp += global.grv;
//collision
script_execute(scr_collision);
//SIGHT
if ((collision_line(x,y,x + sightlinex * tile,y,obj_player,false,true)) && see = 0)
{
	see = 1;
	tear = instance_create_layer(x + 0, y - 8, "Player", obj_tears);
	//Set tear flight direction
	tear.dir = sightlinex;
	//Set tear speed
	tear.t_speed = tearspd;
	alarm_set(0, bullet_interval * room_speed);
}
//movement execution
x += hsp;
y += vsp;