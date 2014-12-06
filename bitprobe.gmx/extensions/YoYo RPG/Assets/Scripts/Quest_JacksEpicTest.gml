
// Setup
QuestNew("Jack's Epic Test Quest", "Unmasked!");
QuestGiver(npcCharlene);

// List requisites

// Start text
QuestDialogueContext(Context.intro);
QuestDialogueBegin(0);
QuestDialogue("Something");
QuestDialogueAccept(-1, -1, "Groovy! I'll do that right now!", "Nope!");

// Progress text
QuestDialogueContext(Context.progress);
QuestDialogueBegin(0);
QuestDialogue("Something");

// End text
QuestDialogueContext(Context.ending);
QuestDialogueBegin(0);
QuestDialogue("Something");

// Finish conditions
//QuestCondition(CheckExploreArea, markerJack);
QuestCondition(EffectFinishQuest);

// Effects
//QuestEffect(EffectSpawnObject, markerJackSpawn, objSkraggleKlaw);
