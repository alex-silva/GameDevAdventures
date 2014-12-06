/// QuestDialogueItem(itemScript, number);
//
//  Adds an item to the conversation. Same rules as responses, and both responses
//  and items can be intermingled.
//
//  - itemScript, is the ID of a script that returns an array with the item's details.
//  - number, how many of the given item are in this "stack".
//
//  About stacks; You can add the same item multiple times, but each entry in
//  the list can sell a different number of them. Final price will be number * item value.
//
//*****************************************************************************

// Pull apart structures to put new data into them
var _quest, _map, _type, _response, _outcome, _array;
_quest = global.questIndex;

_context = _quest[? "Dialogue"];
_map = _context[global.questContext];

//_map = _quest[? "Dialogue"];
_type     = _map[? "Type"];
_response = _map[? "Response"];
_outcome  = _map[? "Outcome"];

// Add response
_type[global.dialogueIndex, global.responseIndex] = 1;
_response[global.dialogueIndex, global.responseIndex] = argument0;
_outcome[global.dialogueIndex, global.responseIndex++]  = argument1;

// Put structures back into place
_map[? "Type"] = _type;
_map[? "Response"] = _response;
_map[? "Outcome"] = _outcome;