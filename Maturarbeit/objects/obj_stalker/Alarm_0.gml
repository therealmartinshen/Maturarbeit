/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 541B170B
/// @DnDArgument : "code" "//only if second check is successful, the stalker will be set active$(13_10)if (collision_line(x - sightlineR * tile, y, x + sightlineR * tile, y, obj_player, false, true))$(13_10){$(13_10)	active = true;$(13_10)}$(13_10)else set = 0;"
//only if second check is successful, the stalker will be set active
if (collision_line(x - sightlineR * tile, y, x + sightlineR * tile, y, obj_player, false, true))
{
	active = true;
}
else set = 0;