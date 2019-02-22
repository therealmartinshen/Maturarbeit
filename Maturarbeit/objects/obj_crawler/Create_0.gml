/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66EE175C
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)walkspd = 2;$(13_10)dirtoggle = walkspd * 60;$(13_10)xx = 1;$(13_10)set = 0;"
hsp = 0;
vsp = 0;
walkspd = 2;
dirtoggle = walkspd * 60;
xx = 1;
set = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2B91B0B4
/// @DnDArgument : "steps" "dirtoggle"
alarm_set(0, dirtoggle);