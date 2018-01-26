/// @description Insert description here
// You can write your code in this editor
if(self.currentHealth == 0)
{
	room_goto(room1);
}

switch(self.state)
{
	case statesList.FreeMove:
		scrPlayerFreeMove();
		break;
	case statesList.BoostMove:
		scrPlayerBoostMove();
		break;
}