if (!global.isMenu)
{
//ALARM MANAGEMENT
if set = 0 set = 1;
//GRAVITY
vsp = vsp + global.grv;
//HORIZONTAL MOVEMENT
hsp = xx * walkspd;
//COLLISION
script_execute(scr_collision);
//MOVEMENT EXECUTION
x += hsp;
y += vsp;
}

else
{
	//STOPPING ALARMS AT CURRENT POSITION
	if set = 1 hold_alarm[0]=alarm[0];
	alarm[0]=hold_alarm[0];
	set = 0;
}