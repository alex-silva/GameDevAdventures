
// Setup
QuestNew("Monster Slayer", "Hero Of The Land");
QuestGiver(npcGrimbeard);

// List requisites

// Start text
QuestDialogueContext(Context.intro);
QuestDialogueBegin(0);
QuestDialogue("Hey there! You know, there are few things better in life than being a Hero. Fame. Fortune. Princesses swooning at your feet...");
QuestDialogue("I can help you get all of that. Just listen up...");
QuestDialogue("You might have heard whispers about the ancient evil beast that creeps into Dadioville at night and attacks innocent townsfolk...");
QuestDialogue("Well, the tales are true! I've seen the monster with my own eyes!  I struck a blow & injured the beast! I gave chase, but couldn't match its speed!...");
QuestDialogue("If you could find the beast & slay it, you would be renowned throughout these lands as a hero...");
QuestDialogueAccept(1, 2, "Cool beans! I'll get right on that!", "Hmmm, no thanks, that sounds like it requires effort.");
QuestDialogueBegin(1);
QuestDialogue("Talk to Wanda The Wanderer to the North East of town to find out more about the beasts movements.");
QuestDialogueBegin(2);
QuestDialogue("Think of the Princesses, boy!");

// Progress text
QuestDialogueContext(Context.progress);
QuestDialogueBegin(0);
QuestDialogue("So, did you even talk to Wanda yet? In the North East of town?");
QuestDialogue("You really gotta stop being such a layabout...");

// End text

// Finish conditions
QuestCondition(CheckTalkToNpc, npcWandaTheWanderer);
QuestCondition(EffectFinishQuest);

// Effects