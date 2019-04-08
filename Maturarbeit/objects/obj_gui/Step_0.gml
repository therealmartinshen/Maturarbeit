/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DE9526E
/// @DnDArgument : "code" "vx = camera_get_view_x(view_camera[0]);$(13_10)vy = camera_get_view_y(view_camera[0]);$(13_10)$(13_10)global.dx = view_wport[0];				//screen width$(13_10)global.dy = view_hport[0];				//screen height$(13_10)$(13_10)//HEALTH MAINTENANCE$(13_10)if (global.playerHealth <= 0) global.playerHealth = 0;"
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

global.dx = view_wport[0];				//screen width
global.dy = view_hport[0];				//screen height

//HEALTH MAINTENANCE
if (global.playerHealth <= 0) global.playerHealth = 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 710161FF
/// @DnDArgument : "x" "vx"
/// @DnDArgument : "y" "vy"
x = vx;
y = vy;