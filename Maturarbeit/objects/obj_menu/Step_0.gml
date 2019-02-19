/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24CA73A2
/// @DnDArgument : "code" "var vx = camera_get_view_x(view_camera[0]);$(13_10)var vy = camera_get_view_y(view_camera[0]);"
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 4BA90A28
/// @DnDArgument : "x" "vx"
/// @DnDArgument : "y" "vy"
x = vx;
y = vy;