if(keyboard_check(vk_shift) && self.acceleration == DataConvertors_GetSeconds(self.accelerationTime))
{
	self.spd *= 1.5;
	self.acceleration = 0;
}
else if (self.acceleration >=DataConvertors_GetSeconds(2))
{
	self.spd = 30;
}

if(acceleration < room_speed * DataConvertors_GetSeconds(self.accelerationTime))
{
	self.acceleration += 1;	
}

