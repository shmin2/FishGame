if(collision_circle(self.x, self.y, 24,	obj_Interactable, false, true))
{
	if(self.hint == 0)
	{
		self.hint = instance_create_layer(other.x, other.y - other.sprite_height, "Instances", obj_InteractableHint);	
	}
	else
	{
		hint.x = other.x - 15;
		hint.y = other.y - other.sprite_height;
	}
}
else if( hint != 0 )
{
	instance_destroy(hint.id);	
	hint = 0;
}