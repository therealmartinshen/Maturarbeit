if (other.isActive == false) other.isActive = true;
else if (other.isHurting == true) 
{
	script_execute(scr_lifeloss(0.2))
}