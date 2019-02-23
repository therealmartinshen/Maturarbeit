if (!global.isMenu){

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
//stopping alarm at current position
	if set = 1 hold_alarm[0]=alarm[0];
	alarm[0]=hold_alarm[0];
	set = 0;
}