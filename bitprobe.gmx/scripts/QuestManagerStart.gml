/// QuestManagerStart();
//
//  Create the quest system. This script sets up a structure that contains all
//  information about quests and their current states as well as a list of events
//  which have happened during the game/course of a quest.
//
//*****************************************************************************

show_debug_message("Creating quest manager...");

// Create manager structure
manager = ds_map_create();
manager[? "NumberOfQuests"] = 0;                    // Tracking variable, how many quests are in the system
manager[? "QuestsCompleted"] = ds_list_create();    // List of quest names. Anything in here can be ignored in checks
manager[? "QuestsInProgress"] = ds_list_create();   // List of quest names. These are quest that have been accepted, but not finished
manager[? "QuestsHandIn"] = ds_list_create();       // List of quest names. These are quest where conditions have been met
manager[? "Quests"] = ds_map_create();              // The complete list of quests and their data
manager[? "Events"] = ds_list_create();             // List to hold events

// Convenience variables for tracking things as we add quests
global.questIndex = -1;