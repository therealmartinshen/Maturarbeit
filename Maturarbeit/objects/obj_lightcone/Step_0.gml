/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 473B2CD6
/// @DnDArgument : "code" "event_inherited();$(13_10)$(13_10)//Turn tears invisible and visible again$(13_10)if (visible)$(13_10){$(13_10)	var obj = collision_line(x,y,x1,y1,obj_tears,false,true);$(13_10)	if (obj != noone)$(13_10)	{$(13_10)		obj.Visible = false;$(13_10)		obj.visible = false;$(13_10)	}$(13_10)	var obj2 = collision_line(x,y,x2,y2,obj_tears,false,true);$(13_10)	if (obj2 != noone)$(13_10)	{$(13_10)		obj2.Visible = true;$(13_10)	}$(13_10)}"
event_inherited();

//Turn tears invisible and visible again
if (visible)
{
	var obj = collision_line(x,y,x1,y1,obj_tears,false,true);
	if (obj != noone)
	{
		obj.Visible = false;
		obj.visible = false;
	}
	var obj2 = collision_line(x,y,x2,y2,obj_tears,false,true);
	if (obj2 != noone)
	{
		obj2.Visible = true;
	}
}