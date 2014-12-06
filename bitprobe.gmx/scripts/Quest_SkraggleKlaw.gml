
// Setup
QuestNew("Skraggle Klaw", "Hero Of The Land");
QuestGiver(npcSwordmasterSerena);

// List requisites
QuestRequisite(CheckQuestComplete, "Scouting The Land");

// Start text
QuestDialogueContext(Context.intro);
QuestDialogueBegin(0);
QuestDialogue("Hmmmph! So you're the young lad who's out to make a name for himself by slaying the almighty Skraggle Klaw eh?");
QuestDialogueResponse(1, "That's right! Should be a piece of cake! My body is ready!");
QuestDialogueResponse(2, "Any advice for taking him down?");
QuestDialogueResponse(3, "Actually I changed my mind, I think I'll just wander off to bed.");

QuestDialogueBegin(1);
QuestDialogue("Hmm. Skraggle Klaw will likely eat your body like a piece of cake... oh well, never mind...");
QuestDialogueResponse(4, "");
QuestDialogueBegin(2);
QuestDialogue("Advice?... um... try not to get killed too much?");
QuestDialogueResponse(4, "");
QuestDialogueBegin(3);
QuestDialogue("You lazy little... *smacks*... this is serious business, boy! The town is depending on you! Get your act together and go get that monster!");
QuestDialogueResponse(4, "");
QuestDialogueBegin(4);
QuestDialogue("Let's get this party started! Skraggle Klaw is located in the final room of the cave system to the North East of town...")
QuestDialogue("The caves there are infested with deadly scorpions, but that should be no worry for a hero like yourself...")
QuestDialogue("It's Skraggle Klaw himself that's the problem. Those jagged teeth. Those massive razor sharp claws.")
QuestDialogue("And the bonepiles of previous heroes heaped all around can be quite offputting...")
QuestDialogue("Anyway, enough chitchat! You ready to go?")
QuestDialogueAccept(5, 6, "I sure am!", "I think I peed my pants.");
QuestDialogueBegin(5);
QuestDialogue("Great! I can see that steely hero glint in your eye! You'll be fine.");
QuestDialogueBegin(6);
QuestDialogue("*sigh*");

// Progress text
QuestDialogueContext(Context.progress);
QuestDialogueBegin(0);
QuestDialogue("Don't talk to me again until you've defeated Skraggle Klaw.");
QuestDialogue("You know where to find him already! He's in the final room of the cave system to the North East of town.");

// End text

// Finish conditions
QuestCondition(CheckExploreArea, markerSkraggleKlaw);
QuestCondition(EffectFinishQuest);

// Effects
QuestEffect(EffectSpawnObject, markerSkraggleKlawSpawn, objSkraggleKlaw);
QuestEffect(EffectStartQuest, "Defeat Skraggle Klaw");