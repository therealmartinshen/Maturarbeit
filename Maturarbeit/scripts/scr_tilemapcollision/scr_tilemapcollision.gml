/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 423A2B96
/// @DnDArgument : "code" "//Script for collision with tilemaps$(13_10)//scr_tilemapcollision()$(13_10)//variables hsp*, vsp*, tilemap* must be given inside that instance that uses it.$(13_10)$(13_10)//temporary variable for the edge of the collisionbox of instance$(13_10)var bbox_side;$(13_10)//Horizontal Tile Collision$(13_10)if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;$(13_10)if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0){$(13_10)	if (hsp > 0) x = x - (x mod 32) + 31 - (bbox_right - x);$(13_10)	else x = x - (x mod 32) + (x - bbox_left);$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)//Vertical Tile Collision$(13_10)if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;$(13_10)if (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0) || (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0){$(13_10)	if (vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);$(13_10)	else y = y - (y mod 32) + (y - bbox_top);$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)"
//Script for collision with tilemaps
//scr_tilemapcollision()
//variables hsp*, vsp*, tilemap* must be given inside that instance that uses it.

//temporary variable for the edge of the collisionbox of instance
var bbox_side;
//Horizontal Tile Collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0){
	if (hsp > 0) x = x - (x mod 32) + 31 - (bbox_right - x);
	else x = x - (x mod 32) + (x - bbox_left);
	hsp = 0;
}

//Vertical Tile Collision
if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0) || (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0){
	if (vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) + (y - bbox_top);
	vsp = 0;
}