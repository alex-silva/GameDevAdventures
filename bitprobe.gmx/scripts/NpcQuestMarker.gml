/// NpcQuestMarker(npc, quest, marker);
//
//  Changes the current quest, and marker sprite for given NPC.
//
//*****************************************************************************

if (instance_exists(argument0))
{
    argument0.quest = argument1;
    argument0.displayMarker = argument2;
}