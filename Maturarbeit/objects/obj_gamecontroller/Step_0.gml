/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AE6B39E
/// @DnDArgument : "code" "//ADMIN MODE$(13_10)if (adminMode == true)$(13_10){$(13_10)	if keyboard_check_pressed(102)		//Numlock 6$(13_10)		room_goto_next();$(13_10)	if keyboard_check_pressed(100)		//Numlock 4$(13_10)		room_goto_previous();$(13_10)}"
//ADMIN MODE
if (adminMode == true)
{
	if keyboard_check_pressed(102)		//Numlock 6
		room_goto_next();
	if keyboard_check_pressed(100)		//Numlock 4
		room_goto_previous();
}