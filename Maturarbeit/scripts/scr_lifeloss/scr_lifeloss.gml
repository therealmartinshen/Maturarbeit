/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11F06D5A
/// @DnDArgument : "code" "//ONLY USE ON OBJ_PLAYER!$(13_10)var lifeloss = argument0;$(13_10)global.playerHealth -= lifeloss;$(13_10)with (other) {instance_destroy()}$(13_10)$(13_10)if (!lifeSet)$(13_10){$(13_10)with(obj_gui) alarm_set(0, 60);$(13_10)}"
//ONLY USE ON OBJ_PLAYER!
var lifeloss = argument0;
global.playerHealth -= lifeloss;
with (other) {instance_destroy()}

if (!lifeSet)
{
with(obj_gui) alarm_set(0, 60);
}