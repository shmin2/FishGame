/// @description Insert description here
// You can write your code in this editor
switch(self.state)
{
	case statesList.FreeMove:
		scrPlayerFreeMove();
		break;
	case statesList.BoostMove:
		scrPlayerBoostMove();
		break;
}