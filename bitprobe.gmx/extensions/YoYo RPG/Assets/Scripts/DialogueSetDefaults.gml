/// DialogueSetDefaults();
//
//  This script initializes all the things needed for any object that utilizes
//  the dialogue box system. Don't forget to put this in the object Create Event
//  or things may go wrong when an instance of it tries to open a dialogue box!
//
//*****************************************************************************

// Default text, helpful
SetAvatar("", -1);
textPickRandomly = false;
text[0, 0] = "NO TEXT SET#Set in creation code of instance in room editor!";
response[0, 0] = "";
outcome[0, 0] = -1;
type[0, 0] = 0;
quest = -1;
