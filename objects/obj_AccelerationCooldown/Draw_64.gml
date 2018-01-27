/// @description Insert description here
// You can write your code in this editor
a = obj_Player.accelerationBar;
b= obj_Player.accelerationRecoveryTime;

draw_healthbar(20, 20, 245, 40, (obj_Player.inkBlastCooldown / DataConvertors_GetFramesPerSecond(obj_Player.inkBlastCooldownTime) * 100), c_green, c_green, c_red, 1, true, true);