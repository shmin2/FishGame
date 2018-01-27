if(keyboard_check(vk_shift) && self.accelerationBar == DataConvertors_GetFramesPerSecond(self.accelerationRecoveryTime))
{
	self.spd *= 1.5;
	self.accelerationBar = 0;
}
else if (self.accelerationBar >=DataConvertors_GetFramesPerSecond(self.accelerationTime))
{
	self.spd = 5;
}

if(accelerationBar < DataConvertors_GetFramesPerSecond(self.accelerationRecoveryTime))
{
	self.accelerationBar += 1;	
}

