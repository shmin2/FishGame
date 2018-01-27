if(keyboard_check(vk_space) && self.inkBlastCooldown == 0)
{
	instance_create_layer(self.x,self.y,"Instances", obj_InkCloud);
	self.inkBlastCooldown = DataConvertors_GetFramesPerSecond(self.inkBlastCooldownTime);
}


if(self.inkBlastCooldown > 0)
{
	inkBlastCooldown -= 1;
}
