//Activate Ambusher
if (other.isActive == false) other.isActive = true;
//Activate Lifeloss
else if (other.isHurting == true && hurtable == true) 
{
	script_execute(scr_lifeloss(0.25));
	alarm_set(2,room_speed*0.15);
}