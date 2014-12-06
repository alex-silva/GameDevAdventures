/// EventScanAdvanceTo(key, value);
//
//*****************************************************************************

// Get stuff
var _events, _size, _key, _value;
with (objQuestManager)
    _events = manager[? "Events"];
_size = ds_list_size(_events);

while (true)
    {
    // Break out if out of range
    if (global.eventScanPosition >= _size)
        break;
    
    // Find the next key-value pair
    _key = ds_list_find_value(_events, global.eventScanPosition++);
    _value = ds_list_find_value(_events, global.eventScanPosition++);
    
    // If that pair matches what we're looking for, return true
    if (string(_key)==string(argument0) && string(_value)==string(argument1))
        return true;
    }

// Something obviously wasn't found...
return false;
