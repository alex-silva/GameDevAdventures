
// Setup
QuestNew("Defeat Skraggle Klaw", "Hero Of The Land");
QuestGiver(npcSwordmasterSerena);

// List requisites
QuestRequisite(CheckQuestComplete, "Skraggle Klaw");

// Start text

// Progress text
QuestDialogueContext(Context.progress);
QuestDialogueBegin(0);
QuestDialogue("Don't talk to me again until you've defeated Skraggle Klaw.");
QuestDialogue("You know where to find him already! He's in the final room of the cave system to the North East of town.");

// End text

// Finish conditions
QuestCondition(CheckEnemyDefeated, objSkraggleKlaw);
QuestCondition(EffectFinishQuest);

// Effects
QuestEffect(EffectSpawnObjectContents, markerSkraggleKlawSpawn, objChest, objPurpleGem, 10);
QuestEffect(EffectStartQuest, "Victorious Return");