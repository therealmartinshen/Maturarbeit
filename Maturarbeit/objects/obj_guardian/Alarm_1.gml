/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EA1EC2D
/// @DnDArgument : "code" "///@description Actions of light off$(13_10)$(13_10)checkforPlayer = false;"
///@description Actions of light off

checkforPlayer = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6891DD5C
/// @DnDArgument : "steps" "lighton * 60"
alarm_set(0, lighton * 60);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 75805769
/// @DnDArgument : "soundid" "sTest"
/// @DnDSaveInfo : "soundid" "30ff8017-dcc6-43e9-a94d-f65f24e65b5f"
audio_play_sound(sTest, 0, 0);