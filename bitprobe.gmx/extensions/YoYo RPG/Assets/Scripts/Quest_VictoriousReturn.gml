
// Setup
QuestNew("Victorious Return", "Hero Of The Land");
QuestGiver(npcSwordmasterSerena);

// List requisites
QuestRequisite(CheckQuestComplete, "Defeat Skraggle Klaw");

// Start text

// Progress text

// End text
QuestDialogueContext(Context.ending);
QuestDialogueBegin(0);
QuestDialogue("Congratulations! I don't know what to say. To be completely honest, I thought you'd end up as scorpion food...");
QuestDialogue("But I'm happy to be proven wrong! *hugs*...");
QuestDialogue("You defeated Skraggle Klaw! Damn son, you are a true Hero! In fact, you are THE Hero of the land!...");
QuestDialogue("Hip hip hoooorayyy!!! We can all sleep soundly now with you as our saviour!");

// Finish conditions

// Effects

