// State actions
scrPlayerAcceleration();
scrInkBlast();

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
