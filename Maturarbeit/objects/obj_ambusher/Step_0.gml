/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1096EB46
/// @DnDArgument : "code" "//ACTIVATION$(13_10)if (isActive == true && i == 0) $(13_10){$(13_10)	alarm_set(0,timeToReact * room_speed); $(13_10)	i += 1;$(13_10)}$(13_10)//DECCELERATION$(13_10)if (hsp > 0) hsp -= decceleration;$(13_10)else if (hsp < 0) hsp += decceleration;$(13_10)//GRAVITY$(13_10)vsp += global.grv;$(13_10)//COLLISION$(13_10)script_execute(scr_collision)$(13_10)//MOVEMENT EXECUTION$(13_10)x += hsp;$(13_10)y += vsp;"
//ACTIVATION
if (isActive == true && i == 0) 
{
	alarm_set(0,timeToReact * room_speed); 
	i += 1;
}
//DECCELERATION
if (hsp > 0) hsp -= decceleration;
else if (hsp < 0) hsp += decceleration;
//GRAVITY
vsp += global.grv;
//COLLISION
script_execute(scr_collision)
//MOVEMENT EXECUTION
x += hsp;
y += vsp;