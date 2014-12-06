/// RestartGame();
//
//*****************************************************************************

var _transition;
_transition = instance_create(0, 0, objTransition);
_transition.destRoom = room_next(rmCharacterSelect);;

objPlayer.life = 5;