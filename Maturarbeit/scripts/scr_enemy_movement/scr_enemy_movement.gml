/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40212E6E
/// @DnDArgument : "code" "if (!obj_menu.isMenu){$(13_10)//alarm management$(13_10)if set = 0 set = 1;$(13_10)$(13_10)//gravity$(13_10)vsp = vsp + global.grv;$(13_10)$(13_10)//horizontal$(13_10)hsp = xx * walkspd;$(13_10)$(13_10)//collision$(13_10)script_execute(scr_collision);$(13_10)$(13_10)//execution of Movement$(13_10)x += hsp;$(13_10)y += vsp;$(13_10)}$(13_10)else$(13_10){$(13_10)	if set = 1 hold_alarm[0]=alarm[0];$(13_10)	alarm[0]=hold_alarm[0];$(13_10)	set = 0;$(13_10)}"
if (!obj_menu.isMenu){
//alarm management
if set = 0 set = 1;

//gravity
vsp = vsp + global.grv;

//horizontal
hsp = xx * walkspd;

//collision
script_execute(scr_collision);

//execution of Movement
x += hsp;
y += vsp;
}
else
{
	if set = 1 hold_alarm[0]=alarm[0];
	alarm[0]=hold_alarm[0];
	set = 0;
}