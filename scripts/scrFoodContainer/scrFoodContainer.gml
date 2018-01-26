crateId = argument0;
hintId = argument1;

if(keyboard_check_pressed(ord("A")))
{
	if(ord(crateId.correctButton) == ord("A"))
	{
		if irandom(10) >= 3
		{
			crateId.correctButton = "D";
			hintId.x = obj_player.x + 50;
		}
		audio_play_sound(SuccessSound,0,0);
		crateId.previousTime = crateId.currentTime;
		crateId.progress += 10;
	}
	else
	{
		crateId.progress -= 25;
		audio_play_sound(FailSound,0,0);
	}
}

if(keyboard_check_pressed(ord("D"))) 
{
	if(ord(crateId.correctButton) == ord("D"))
	{
		if irandom(10) >= 3
		{
			crateId.correctButton = "A";
			hintId.x = obj_player.x - 50;
		}
		audio_play_sound(SuccessSound,0,0);
		crateId.previousTime = crateId.currentTime;
		crateId.progress += 10;
	}
	else
	{
		crateId.progress -= 25;
		audio_play_sound(FailSound,0,0);
	}
}

if(crateId.currentTime - crateId.previousTime > 50)
{
	crateId.progress -= 25;	
	crateId.previousTime = crateId.currentTime;
	if(ord(crateId.correctButton) == ord("D"))
	{
		crateId.correctButton = "A";
		hintId.x = obj_player.x - 100;
		hintId.y = obj_player.y;
		crateId.currentTime += 1;
		audio_play_sound(FailSound,0,0);
		return;
	}
	if(ord(crateId.correctButton) == ord("A"))
	{
		crateId.correctButton = "D";
		hintId.x = obj_player.x + 100;
		hintId.y = obj_player.y;
		crateId.currentTime += 1;
		audio_play_sound(FailSound,0,0);
		return;
	}
}

crateId.currentTime += 1;

if(progress >= 100)
{
	obj_player.controlLocked = false;
	crateId.isActivated = false;
	instance_deactivate_object(crateId);
	instance_deactivate_object(hintId);
	audio_play_sound(SuccessSound,0,0);
}
else if(progress <= -100)
{
	obj_player.controlLocked = false;
	crateId.isActivated = false;
	instance_deactivate_object(crateId);
	instance_deactivate_object(hintId);
	audio_play_sound(FailSound,0,0);
}