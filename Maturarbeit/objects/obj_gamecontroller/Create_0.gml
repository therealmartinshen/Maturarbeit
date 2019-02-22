/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1633EAD6
/// @DnDArgument : "code" "global.grv = 0.1;$(13_10)$(13_10)var _dwidth = display_get_width();$(13_10)var _dheight = display_get_height();$(13_10)//CAMERA CONTROL$(13_10)	//Initialise Cameras$(13_10)view_enabled = true;$(13_10)view_visible[0] = true;$(13_10)view_xport[0] = 0;$(13_10)view_yport[0] = 0;$(13_10)view_wport[0] = 16 * 50; //960$(13_10)view_hport[0] = 9 * 50; //540$(13_10)view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, view_wport[0] / 3, view_hport[0] / 4);$(13_10)	//Initialise Window$(13_10)/*var _xpos = (_dwidth / 2) - 480;$(13_10)var _ypos = (_dheight / 2) - 270;$(13_10)window_set_rectangle(_xpos, _ypos, view_wport[0], view_hport[0]);*/$(13_10)surface_resize(application_surface, view_wport[0], view_hport[0]);"
global.grv = 0.1;

var _dwidth = display_get_width();
var _dheight = display_get_height();
//CAMERA CONTROL
	//Initialise Cameras
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 16 * 50; //960
view_hport[0] = 9 * 50; //540
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, view_wport[0] / 3, view_hport[0] / 4);
	//Initialise Window
/*var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
window_set_rectangle(_xpos, _ypos, view_wport[0], view_hport[0]);*/
surface_resize(application_surface, view_wport[0], view_hport[0]);/**/