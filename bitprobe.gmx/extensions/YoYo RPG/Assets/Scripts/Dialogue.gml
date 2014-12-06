/// Dialogue(string);
//
//  This function adds a new sentence to the currently defined conversation.
//  Automatically increments the sentence/line index so you don't have to.
//
//*****************************************************************************

text[global.dialogueIndex, global.lineIndex++] = argument0;
