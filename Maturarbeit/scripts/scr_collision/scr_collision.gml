/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0081FA91
/// @DnDArgument : "code" "//$(13_10)//$(13_10)//$(13_10)$(13_10)//Horizontal collision$(13_10)if (place_meeting(x + hsp, y, obj_collisionmask))$(13_10){$(13_10)	while (!place_meeting(x + sign(hsp),y,obj_collisionmask))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)//Vertical collision$(13_10)if (place_meeting(x, y + vsp, obj_collisionmask))$(13_10){$(13_10)	while (!place_meeting(x,y + sign(vsp),obj_collisionmask))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}"
//
//
//

//Horizontal collision
if (place_meeting(x + hsp, y, obj_collisionmask))
{
	while (!place_meeting(x + sign(hsp),y,obj_collisionmask))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

//Vertical collision
if (place_meeting(x, y + vsp, obj_collisionmask))
{
	while (!place_meeting(x,y + sign(vsp),obj_collisionmask))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}