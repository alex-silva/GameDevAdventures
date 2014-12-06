/// DialogueItem(itemScript, number);
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

type[global.dialogueIndex, global.responseIndex] = 1;
response[global.dialogueIndex, global.responseIndex] = argument0;
outcome[global.dialogueIndex, global.responseIndex++]  = argument1;
