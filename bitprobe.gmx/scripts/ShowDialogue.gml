/// ShowDialogue(instance);
//
//  This function creates a new dialogue box, and transfers the given instance's
//  values (as set up in Creation Code in the room editor) to it for displaying.
//
//*****************************************************************************

// Create dialogue box instance, and transfer given instance's values to it
var _inst, _newDialogue;
_inst = argument0;
_newDialogue = instance_create(0, 0, objDialogueBox);   // New dialogue box
EventLog("TalkToNpc", _inst);

// Check quest text exists for it's current context
var _hasContext;
_hasContext = false;
if (_inst.quest != -1)
    {
    var _quest, _context, _dialogue;
    _quest = _inst.quest;
    _context = _quest[? "Dialogue"];
    if (CheckQuestInProgress(_quest[? "Name"]))  _dialogue = _context[1];
    else if (CheckQuestHandIn(_quest[? "Name"])) _dialogue = _context[2];
    else                                         _dialogue = _context[0];
    _hasContext = (array_length_1d(_dialogue[? "Text"]) > 0);
    }

// Npc has no quest text to take
if (!_hasContext)
    {
    _newDialogue.inst = _inst;                              // Id of the instance we take our text from
    _newDialogue.text = _inst.text;                         // The text itself
    _newDialogue.type = _inst.type;                         // The type of response (0=text, 1=item)
    _newDialogue.response = _inst.response;                 // The responses
    _newDialogue.outcome = _inst.outcome;                   // The outcomes of responses
    _newDialogue.name = _inst.name;
    _newDialogue.avatarSprite = _inst.avatarSprite;
    
    // If we have it set to pick a random conversation chain, pick one
    if (_inst.textPickRandomly)
        _newDialogue.section = irandom(array_height_2d(_inst.text)-1);
    }

// Pass quest text to npc
else
    {
    // Pass dialogue
    _newDialogue.inst = _inst;
    _newDialogue.text = _dialogue[? "Text"];
    _newDialogue.type = _dialogue[? "Type"];
    _newDialogue.response = _dialogue[? "Response"];
    _newDialogue.outcome = _dialogue[? "Outcome"];
    _newDialogue.name = _inst.name;
    _newDialogue.avatarSprite = _inst.avatarSprite;
    
    // Complete quest if it's a hand in
    if (CheckQuestHandIn(_quest[? "Name"]))
        QuestComplete(_quest[? "Name"]);
    }