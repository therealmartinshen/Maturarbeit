/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1096EB46
/// @DnDArgument : "code" "if (isActive == true && i == 0) $(13_10){$(13_10)	alarm_set(0,timeToReact); $(13_10)	i += 1;$(13_10)}$(13_10)//speed control$(13_10)if (hsp > 0) hsp -= 0.1;$(13_10)else if (hsp < 0) hsp += 0.1;$(13_10)$(13_10)//gravity$(13_10)vsp += global.grv;$(13_10)$(13_10)//collision$(13_10)script_execute(scr_collision)$(13_10)$(13_10)//movement execution$(13_10)x += hsp;$(13_10)y += vsp;"
if (isActive == true && i == 0) 
{
	alarm_set(0,timeToReact); 
	i += 1;
}
//speed control
if (hsp > 0) hsp -= 0.1;
else if (hsp < 0) hsp += 0.1;

//gravity
vsp += global.grv;

//collision
script_execute(scr_collision)

//movement execution
x += hsp;
y += vsp;