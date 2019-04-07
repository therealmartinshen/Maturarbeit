/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1633EAD6
/// @DnDArgument : "code" "//GLOBAL VARIABLES$(13_10)global.grv = grv;									//gravity$(13_10)global.isControl = true;							//boolean controlling PlayerControl$(13_10)global.playerDepth = layer_get_depth("Player");		//depth value of layer: "Player"$(13_10)global.isMenu = false;								//Checks if player is in Menu$(13_10)$(13_10)//CAMERA CONTROL$(13_10)//Initialise Cameras$(13_10)view_enabled = true;$(13_10)view_visible[0] = true;$(13_10)view_xport[0] = 0;$(13_10)view_yport[0] = 0;$(13_10)view_wport[0] = 16 * camera_size;	//960 (standard)$(13_10)view_hport[0] = 9 * camera_size;	//540 (standard)$(13_10)view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, view_wport[0] / 3, view_hport[0] / 4);$(13_10)$(13_10)//INITIALISE WINDOW$(13_10)//not important for fullscreen!$(13_10)/*$(13_10)var _dwidth = display_get_width();$(13_10)var _dheight = display_get_height();$(13_10)var _xpos = (_dwidth / 2) - 480;$(13_10)var _ypos = (_dheight / 2) - 270;$(13_10)window_set_rectangle(_xpos, _ypos, view_wport[0], view_hport[0]);$(13_10)*/$(13_10)$(13_10)surface_resize(application_surface, view_wport[0], view_hport[0]);"
//GLOBAL VARIABLES
global.grv = grv;									//gravity
global.isControl = true;							//boolean controlling PlayerControl
global.playerDepth = layer_get_depth("Player");		//depth value of layer: "Player"
global.isMenu = false;								//Checks if player is in Menu

//CAMERA CONTROL
//Initialise Cameras
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 16 * camera_size;	//960 (standard)
view_hport[0] = 9 * camera_size;	//540 (standard)
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, view_wport[0] / 3, view_hport[0] / 4);

//INITIALISE WINDOW
//not important for fullscreen!
/*
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
window_set_rectangle(_xpos, _ypos, view_wport[0], view_hport[0]);
*/

surface_resize(application_surface, view_wport[0], view_hport[0]);/**/