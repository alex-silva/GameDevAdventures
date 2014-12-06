/// DialogueHandleOutcome(outcome);
//
//*****************************************************************************

if (argument0 >= 0)
    {
    Debug("Conversation going to new chain...");
    section = argument0;
    waitForResponse = false;
    }
else
    {
    Debug("Conversation ENDING!");
    inst.wait = false;
    instance_destroy();
    }