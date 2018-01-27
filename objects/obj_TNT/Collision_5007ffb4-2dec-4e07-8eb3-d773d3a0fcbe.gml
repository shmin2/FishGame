/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(cooldown = 0)
{
	//dother.currentHealth -= 10;
	audio_play_sound(sound0, 0, 0);
	cooldown = DataConvertors_GetFramesPerSecond(1.5);
}

