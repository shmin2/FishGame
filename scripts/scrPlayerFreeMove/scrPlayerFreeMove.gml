// State actions
scrPlayerAcceleration();

if(keyboard_check(ord("A"))) 
{
	x -= self.spd;
}

if(keyboard_check(ord("D"))) 
{
	x += self.spd;
}

if(keyboard_check(ord("S"))) 
{
	y += self.spd;
}

if(keyboard_check(ord("W"))) 
{
	y -= self.spd;
}

if(self.boostTime < 0)
{
	self.boostTime += 1;
}

// State change asserts
if (keyboard_check(vk_space) && (self.boostTime == 0))
{
	self.state = statesList.BoostMove;
}