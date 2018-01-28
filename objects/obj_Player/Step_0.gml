/// @description Insert description here
// You can write your code in this editor
switch(self.state)
{
	case statesList.statePlayerFreeMove:
		scrPlayerFreeMove();
		break;
	case statesList.statePlayerInteractable:
		LockPickSafe();
		break;
}