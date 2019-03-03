/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 194E89F2
/// @DnDArgument : "code" "/// @description Action of light on$(13_10)$(13_10)//light switching on$(13_10)//CODE$(13_10)$(13_10)//checking for player collision == true$(13_10)checkforPlayer = true;"
/// @description Action of light on

//light switching on
//CODE

//checking for player collision == true
checkforPlayer = true;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 086A26C4
/// @DnDArgument : "steps" "lighton * 60"
/// @DnDArgument : "alarm" "1"
alarm_set(1, lighton * 60);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 44F89777
/// @DnDArgument : "soundid" "sTest"
/// @DnDSaveInfo : "soundid" "30ff8017-dcc6-43e9-a94d-f65f24e65b5f"
audio_play_sound(sTest, 0, 0);