/// NewGame();
//
//*****************************************************************************

if (!instance_exists(objTransition))
    {
    // Create object to handle transition to next room
    var _transition;
    _transition = instance_create(0, 0, objTransition);
    
    // Create persisant gameplay objects
    instance_create(0, 0, objGame);
    instance_create(0, 0, objPlayer);
    instance_create(0, 0, objInventory);
    instance_create(0, 0, objOptions);
    instance_create(0, 0, objSaveLoad);
    instance_create(0, 0, objMusicPlayer);
    instance_create(0, 0, objQuestManager);
    }