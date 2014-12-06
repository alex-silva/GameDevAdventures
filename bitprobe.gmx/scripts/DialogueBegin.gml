/// DialogueBegin(index);
//
//  This starts a new conversation with the given index. This basically sets and
//  resets our globals so that all following Dialogue* scripts come under this index.
//
//*****************************************************************************

// Set
global.dialogueIndex = argument0;

// Reset
global.lineIndex = 0;
global.responseIndex = 0;