/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1633EAD6
/// @DnDArgument : "code" "//CAMERA CONTROL$(13_10)	//Initialise Cameras$(13_10)view_enabled = true;$(13_10)view_visible[0] = true;$(13_10)view_xport[0] = 0;$(13_10)view_yport[0] = 0;$(13_10)view_wport[0] = 960;$(13_10)view_hport[0] = 540;$(13_10)view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 400, 250);$(13_10)	//Initialise Window$(13_10)var _dwidth = display_get_width();$(13_10)var _dheight = display_get_height();$(13_10)var _xpos = (_dwidth / 2) - 480;$(13_10)var _ypos = (_dheight / 2) - 270;$(13_10)window_set_rectangle(_xpos, _ypos, 960, 540);$(13_10)surface_resize(application_surface, 960, 540);"
//CAMERA CONTROL
	//Initialise Cameras
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 960;
view_hport[0] = 540;
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 400, 250);
	//Initialise Window
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
window_set_rectangle(_xpos, _ypos, 960, 540);
surface_resize(application_surface, 960, 540);