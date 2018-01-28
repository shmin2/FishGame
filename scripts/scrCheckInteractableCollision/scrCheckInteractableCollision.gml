if(collision_circle(self.x, self.y, 24,	obj_Interactable, false, true))
{
	if(self.hint == undefined)
	{
		self.hint = instance_create_layer(other.x, other.y - other.sprite_height, "UI", obj_InteractableHint);	
	}
	else
	{
		hint.x = other.x - 15;
		hint.y = other.y - other.sprite_height;
	}
	
	return true;
}
else if( hint != undefined )
{
	instance_destroy(hint.id);	
	hint = undefined;
	return false;
}