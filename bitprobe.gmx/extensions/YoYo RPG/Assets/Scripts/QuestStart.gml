/// QuestStart();
//
//*****************************************************************************

// We passed in the actual quest name
if (is_string(argument0))
    {
    var _name;
    _name = argument0;
    }

// We passed in the quest ds_map
else
    {
    var _quest, _list, _name;
    _quest = argument0;
    _name = _quest[? "Name"];
    with (objQuestManager)
        _list = manager[? "QuestsInProgress"];
    }

// Add quest name to the "In Progress" list, and log it
ds_list_add(_list, _name);
EventLog("QuestStarted", _name);

// Debug, would you have guessed?
show_debug_message("QUEST added to 'In Progress' list: "+_name);
