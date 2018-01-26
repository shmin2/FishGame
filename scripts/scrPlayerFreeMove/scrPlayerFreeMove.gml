// State actions
if(keyboard_check(ord("A"))) 
{
	x = x -4;
}

if(keyboard_check(ord("D"))) 
{
	x = x  + 4;
}

if(keyboard_check(ord("S"))) 
{
	y = y + 4;
}

if(keyboard_check(ord("W"))) 
{
	y = y -4;
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