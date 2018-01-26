// State actions
if(boostTime == 0)
{
	instance_create_layer(self.x,self.y,"Instances", obj_InkCloud);
}

if(self.boostTime <= room_speed * 0.3)
{
	boostTime += 1;
	self.x += self.spd;
}
else
{
	// State change asserts
	self.state = statesList.FreeMove;
	boostTime -= room_speed * 5;
}