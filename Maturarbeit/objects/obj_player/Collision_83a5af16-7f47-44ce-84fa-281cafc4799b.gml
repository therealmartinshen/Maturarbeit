//Activate Ambusher
if (other.isActive == false) other.isActive = true;
//Activate Lifeloss
else if (other.isHurting == true) 
{
	script_execute(scr_lifeloss(0.2))
}