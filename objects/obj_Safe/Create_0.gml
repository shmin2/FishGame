/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,1,ButtonE_Collider);
isActivated = false;
previousTime = 0;
currentTime = 0;
progress = 0;
correctButton = "A";
hint = instance_create_layer(-50,-50,1,obj_ButtonE);
randomize();