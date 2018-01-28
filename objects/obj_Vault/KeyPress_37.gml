/// @description Insert description here
// You can write your code in this editor
Point_dir = image_angle + angle; //the angle to rotate to, add 30 degrees to current angle
normStep=((Point_dir+360) % 360); // Приведения окружности к 360 делениям без отрицательных знаков

if(Warning==1)  audio_play_sound(sound3,0,0);
if(normStep==(pins[i]*angle))
{
    i++;
    Warning=1;
    audio_play_sound(sound0,0,0);
    if(i==countOfPins)
	{
		audio_play_sound(sound2,0,0);
		instance_destroy(self.id);
	}
	else return;
}

audio_play_sound(stepSound,0,0);