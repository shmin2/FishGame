if(self.hint != undefined)
{
	instance_destroy(self.hint);
	self.hint = undefined;
}

if(keyboard_check(vk_escape))
{
	self.state = statesList.statePlayerFreeMove;	
	return;
}

