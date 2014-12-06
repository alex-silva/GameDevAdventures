
// Setup
QuestNew("Scouting The Land", "Hero Of The Land");
QuestGiver(npcHarryTheHunter);

// List requisites
QuestRequisite(CheckQuestComplete, "Finding Wanda");
QuestRequisite(CheckItemInventory, ItemGetGoldenSword());

// Start text
QuestDialogueContext(Context.intro);
QuestDialogueBegin(0);
QuestDialogue("That's a fine sword you have on you there son, but do you know how to use it? You look greener than these trees here...");
QuestDialogue("I hear you're trying to slay the Giant Monster, but unless you have some kind of deathwish, I suggest you toughen yourself up first.");
QuestDialogue("Journey into the snowy wastes to the North West and scout out the two caves where the snow scorpions make their nests.");
QuestDialogue("Then come back to me and let me know what their numbers are like. A culling may be in order.");
QuestDialogueAccept(1, 2, "Groovy! I'll do that right now!", "Nope!");
QuestDialogueBegin(1);
QuestDialogue("That's the spirit! In the meantime, I'll sort your funeral arrangements.");
QuestDialogueBegin(2);
QuestDialogue("Come back when you've grown a few chest hairs.");

// Progress text
QuestDialogueContext(Context.progress);
QuestDialogueBegin(0);
QuestDialogue("Those scorpion caves aren't going to scout themselves you know...");
QuestDialogue("Hope you haven't forgotten my instructions already... scout the two scorpion caves in the snowy wastes to the North West.");

// End text
QuestDialogueContext(Context.ending);
QuestDialogueBegin(0);
QuestDialogue("You're still alive! Nice job! It's important that every few months we send someone out to monitor the snow scorpion population...");
QuestDialogue("*cough*... well, not really... I only wanted to see if you could survive more than ten seconds up there.");
QuestDialogue("Now, I feel you're ready to take on that Giant Monster! Visit Swordmaster Serena in town!...");
QuestDialogue("she'll know exactly where to find the beast.");

// Finish conditions
QuestCondition(CheckExploreArea, markerSnowCave1);
QuestCondition(CheckExploreArea, markerSnowCave2);

// Effects
