/// @description Insert description here
// You can write your code in this editor
if(cooldown = 0)
{
	other.currentHealth -= 10;
	audio_play_sound(sound0, 0, 0);
	cooldown = DataConvertors_GetFramesPerSecond(1.5);
}

