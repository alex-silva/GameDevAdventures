// Setup
QuestNew("The Golden Sword", "Hero Of The Land");
QuestGiver(npcElanoraTheExplorer);

// List requisites
QuestRequisite(CheckQuestInProgress, "Finding Wanda");

// Start text
QuestDialogueContext(Context.intro);
QuestDialogueBegin(0);
QuestDialogue("So you're looking for a Golden Sword? Sure I have such an item! But it'll cost ya!");
QuestDialogue("This ain't no ordinary run of the mill blade, you understand? This is triple folded Scorparian steel! Yup! It's not Gold at all!...");
QuestDialogue("Scorparian steel just has a strong golden hue! And is rarer than diamonds! So that's why this blade is gonna set you back 300 gems!!!");
QuestDialogue("So, you sure you want it?");
QuestDialogueAccept(1, 2, "Oh yeah! 300 gems! Pocket change!", "No way! 300 gems! That's way too expensive!");
QuestDialogueBegin(1);
QuestDialogue("Glad to hear it! You big spender you!");
QuestDialogueItem(ItemGetGoldenSword, 1);
QuestDialogueResponse(-1, "That's all for now.");
QuestDialogueBegin(2);
QuestDialogue("300 gems is very reasonable, ya know! Just keep saving up those gems!");

// Progress text
QuestDialogueContext(Context.progress);
QuestDialogueBegin(0);
QuestDialogue("Keep at it! Save every gem! You'll eventually have enough to buy this wonderful Golden Sword!");
QuestDialogue("Pro tip: blue gems are worth 10 times as much as green gems! And can usually be found in caves!");
QuestDialogueItem(ItemGetGoldenSword, 1);
QuestDialogueResponse(-1, "That's all for now.");

// End text
QuestDialogueContext(Context.ending);
QuestDialogueBegin(0);
QuestDialogue("It suits you! Oh wow! Look at that shimmering blade! Head back to Wanda The Wanderer in Town, she'll know what to do next!");

// Finish conditions
QuestCondition(CheckItemInventory,ItemGetGoldenSword());

// Effects

