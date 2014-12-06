/// QuestUpdate()
//
//*****************************************************************************

show_debug_message("");
show_debug_message("Updating quests...");
show_debug_message("********************");

// Clear all quests and markers off NPCs
with (parNpc)
    NpcQuestMarker(id, -1, -1);

with (objQuestManager)
    {
    // 
    show_debug_message("Update Quests:");
    var _allQuests, _quest, _giver;
    _allQuests = manager[? "Quests"];
    global.questCurrent = global.questFirst;
    
    repeat (ds_map_size(_allQuests))
        {
        _quest = _allQuests[? global.questCurrent];
        
        _giver = _quest[? "Giver"];
       
        // If the quest has NOT been completed, then check stuff
        if (ds_list_find_index(manager[? "QuestsCompleted"], global.questCurrent) == -1)
            {
            // Quest is in progress, so ceck for it's completion
            if (ds_list_find_index(manager[? "QuestsInProgress"], global.questCurrent) != -1)
                {
                show_debug_message("Quest: "+global.questCurrent+" is in progress...");
                NpcQuestMarker(_giver, _quest, sprMarkerProgress);
                
                // Check the conditions are met, if any
                switch (QuestCheckConditions(_quest[? "Conditions"]))
                    {
                    case (4):
                    case (1): QuestHandIn(global.questCurrent); break;
                    case (3): QuestComplete(global.questCurrent); break;
                    }
                }
            
            // Quest is waiting to be handed in
            else if (ds_list_find_index(manager[? "QuestsHandIn"], global.questCurrent) != -1)
                {
                show_debug_message("Quest: "+global.questCurrent+" can be handed in...");
                NpcQuestMarker(_giver, _quest, sprMarkerComplete);
                }
            
            // Quest hasn't been started, check if it can be
            else
                {
                // Check the requisites are met, if any
                switch (QuestCheckRequisites(_quest[? "Requisites"]))
                    {
                    case (4): NpcQuestMarker(_giver, _quest, sprMarkerNew); show_debug_message("Quest: "+global.questCurrent+" started!"); break;
                    case (1): NpcQuestMarker(_giver, _quest, sprMarkerNew); show_debug_message("Quest: "+global.questCurrent+" started! (requisites)"); break;
                    }
                }
            }
        
        // Quest is completed
        else
            show_debug_message("Quest: "+global.questCurrent+" is already completed!");
        
        global.questCurrent = ds_map_find_next(_allQuests, global.questCurrent);
        }
    }

show_debug_message("");