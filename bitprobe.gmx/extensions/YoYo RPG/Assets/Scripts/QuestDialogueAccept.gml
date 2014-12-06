/// QuestDialogueAccept(outcomeY, outcomeN, textY, textN);
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

// Accept
_type[global.dialogueIndex, global.responseIndex] = 2;
_response[global.dialogueIndex, global.responseIndex] = argument2;
_outcome[global.dialogueIndex, global.responseIndex++] = argument0;

// Decline
_type[global.dialogueIndex, global.responseIndex] = 3;
_response[global.dialogueIndex, global.responseIndex] = argument3;
_outcome[global.dialogueIndex, global.responseIndex++] = argument1;

// Put structures back into place
_map[? "Type"] = _type;
_map[? "Response"] = _response;
_map[? "Outcome"] = _outcome;
_quest[? "Dialogue"] = _context;
