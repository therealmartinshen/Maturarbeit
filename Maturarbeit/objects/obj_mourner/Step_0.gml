/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E489E88
/// @DnDArgument : "code" "//gravity$(13_10)vsp += global.grv;$(13_10)//collision$(13_10)script_execute(scr_collision);$(13_10)//movement execution$(13_10)x += hsp;$(13_10)y += vsp;"
//gravity
vsp += global.grv;
//collision
script_execute(scr_collision);
//movement execution
x += hsp;
y += vsp;