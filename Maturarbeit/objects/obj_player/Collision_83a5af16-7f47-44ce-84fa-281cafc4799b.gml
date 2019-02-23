if (other.isActive == false) other.isActive = true;
else if (other.isHurting == true) 
{
	script_execute(scr_lifeloss(0.2))
	if (other.hsp < 0) hsp += -3;
	if (other.hsp > 0) hsp += 3;
}