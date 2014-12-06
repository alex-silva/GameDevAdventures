/// EventLog(type, value);
//
//  Logs an event so that we can look it up later.
//
//*****************************************************************************

// Grab the events list
var _events;
with (objQuestManager)
    _events = manager[? "Events"];

// Put stuff in it
ds_list_add(_events, argument0);
ds_list_add(_events, argument1);

// Debug, so if it doesn't work, we don't have to go insane wondering why
show_debug_message("EVENT logged: "+string(argument0)+" + "+string(argument1));