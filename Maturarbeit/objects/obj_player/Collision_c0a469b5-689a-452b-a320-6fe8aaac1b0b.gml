/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6461A1BF
/// @DnDArgument : "script" "scr_lifeloss"
/// @DnDArgument : "arg" "other.damage"
/// @DnDSaveInfo : "script" "8ef4634d-9782-40d5-b9e3-87e18417c2ee"
script_execute(scr_lifeloss, other.damage);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7FADEDE9
/// @DnDApplyTo : other
with(other) instance_destroy();