/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0081FA91
/// @DnDArgument : "code" "//variables 'hsp' 'vsp' required$(13_10)$(13_10)//HORIZONTAL COLLISION$(13_10)//If pixel at point current x + hsp and current y overlaps with obj_collisionmask$(13_10)if (place_meeting(x + hsp, y, obj_collisionmask))$(13_10){$(13_10)	//when movement stops, object is still hsp pixels away from obj_collisionmask.$(13_10)	//this command moves the object object one pixel in the direction the object was moving [sign(hsp) = hsp/|hsp|] towards obj_collisionmask $(13_10)	//until there are no pixels left between obj_player and obj_collisionmask.Then it stops all horizontal movement [hsp=0].$(13_10)	while (!place_meeting(x + sign(hsp),y,obj_collisionmask))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)//VERTICAL COLLISION$(13_10)//If pixel at point current x and current y + vsp overlaps with obj_collisionmask$(13_10)if (place_meeting(x, y + vsp, obj_collisionmask))$(13_10){$(13_10)	//when movement stops, object is still vsp pixels away from obj_collisionmask.$(13_10)	//this command moves the object object one pixel in the direction the object was moving [sign(vsp) = vsp/|vsp|] towards obj_collisionmask $(13_10)	//until there are no pixels left between obj_player and obj_collisionmask.Then it stops all vertical movement [vsp=0].$(13_10)	while (!place_meeting(x,y + sign(vsp),obj_collisionmask))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}"
//variables 'hsp' 'vsp' required

//HORIZONTAL COLLISION
//If pixel at point current x + hsp and current y overlaps with obj_collisionmask
if (place_meeting(x + hsp, y, obj_collisionmask))
{
	//when movement stops, object is still hsp pixels away from obj_collisionmask.
	//this command moves the object object one pixel in the direction the object was moving [sign(hsp) = hsp/|hsp|] towards obj_collisionmask 
	//until there are no pixels left between obj_player and obj_collisionmask.Then it stops all horizontal movement [hsp=0].
	while (!place_meeting(x + sign(hsp),y,obj_collisionmask))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

//VERTICAL COLLISION
//If pixel at point current x and current y + vsp overlaps with obj_collisionmask
if (place_meeting(x, y + vsp, obj_collisionmask))
{
	//when movement stops, object is still vsp pixels away from obj_collisionmask.
	//this command moves the object object one pixel in the direction the object was moving [sign(vsp) = vsp/|vsp|] towards obj_collisionmask 
	//until there are no pixels left between obj_player and obj_collisionmask.Then it stops all vertical movement [vsp=0].
	while (!place_meeting(x,y + sign(vsp),obj_collisionmask))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}