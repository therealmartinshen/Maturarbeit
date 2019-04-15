if(hurtable == true)
{
	script_execute(scr_lifeloss, other.damage);
	alarm_set(2, room_speed * 0.15);
	set1 = false;
}