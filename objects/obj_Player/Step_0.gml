/// @description Insert description here
// You can write your code in this editor
scrGetInteractable();


if(self.currentHealth == 0)
{
	room_goto(room1);
}

switch(self.state)
{
	case statesList.FreeMove:
		scrPlayerFreeMove();
		break;
}