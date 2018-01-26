//Если подсказка не создана нужно создать ёё
if(!obj_player.tooltipCreated)
{
	
	// Нужно проверить нужна ли подсказка игроку или нет
	if(collision_circle(obj_player.x, obj_player.y, 20, ButtonE_Collider, false, true))
	{
		instance_create_layer(obj_player.x, obj_player.y - obj_player.sprite_height, "obj_playerLayer", obj_ButtonE);
	    obj_player.tooltipCreated = true;
	}
}
else
{
	// Если подсказка больше не нужна удаляем её
	if(!collision_circle(obj_player.x, obj_player.y, 20, ButtonE_Collider, false, true))
	{
		instance_destroy(obj_ButtonE.id);
		obj_player.tooltipCreated = false;
	}
}