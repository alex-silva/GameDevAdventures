
// Setup
QuestNew("Finding Wanda", "Hero Of The Land");
QuestGiver(npcWandaTheWanderer);

// List requisites
QuestRequisite(CheckQuestInProgress, "Monster Slayer");

// Start text
QuestDialogueContext(Context.intro);
QuestDialogueBegin(0);
QuestDialogue("Yeah yeah, I heard about that Giant Scorpion... tangled with him myself a few times. He's a feisty one!...");
QuestDialogue("I reckon the only way to take him out is to get your hands on a more powerful weapon...");
QuestDialogue("I believe Elanora The Explorer might have such an item... she's forever rummaging around ancient ruins...");
QuestDialogue("A while back she came across a powerful weapon: a Golden Sword that can slay scorpions in a single swipe!...");
QuestDialogue("A word of warning tho, she won't part with it easily! No doubt she'll demand a ludicrous amount of gems...");
QuestDialogue("But it's exactly what you need! So off you go! Buy the Golden Sword from Elanora The Explorer in the desert to the South East of town! Then report back to me!");
QuestDialogueAccept(1, 2, "Sure! I'll get right on that.", "Nah. I'm too lazy.");
QuestDialogueBegin(1);
QuestDialogue("Good lad!");
QuestDialogueBegin(2);
QuestDialogue("You really gotta work on your attitude, boy.");

// Progress text
QuestDialogueContext(Context.progress);
QuestDialogueBegin(0);
QuestDialogue("You still dawdling about? You need to buy the Golden Sword off Elanora The Explorer in the desert to the South East of town! Then report back to me!");

// End text
QuestDialogueContext(Context.ending);
QuestDialogueBegin(0);
QuestDialogue("Nice! That's one sparkly looking blade! Show it off to Harry The Hunter in the forest to the South...");
QuestDialogue("He'll be able to guide you further on your quest to defeat the Giant Scorpion!");
QuestDialogue("Oh and be sure you *equip* that badboy before tackling more dangerous monsters!");

// Finish conditions
QuestCondition(CheckItemInventory,ItemGetGoldenSword());

// Effects