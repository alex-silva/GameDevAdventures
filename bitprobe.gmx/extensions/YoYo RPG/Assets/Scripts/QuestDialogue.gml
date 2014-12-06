/// QuestDialogue(string);
//
//
//*****************************************************************************

// Get stuff
var _quest, _map, _array, _context;
_quest = global.questIndex;
_context = _quest[? "Dialogue"];
_map = _context[global.questContext];
_array = _map[? "Text"];

//
_array[global.dialogueIndex, global.lineIndex++] = argument0;

// Put array back into map
_map[? "Text"] = _array;
