/// DialogueResponse(outcome, string);
//
//  Adds a response to the current conversation. You can add as many of these as
//  you like, but they will always appear AFTER the current conversation.
//
//  - outcome, is the index of the conversation this response goes to.
//  - string, is the text displayed for this response.
//
//*****************************************************************************

type[global.dialogueIndex, global.responseIndex] = 0;
response[global.dialogueIndex, global.responseIndex] = argument1;
outcome[global.dialogueIndex, global.responseIndex++]  = argument0;
