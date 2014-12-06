/// LocationName(id/name);
//
//*****************************************************************************

// Get, maybe convert to get, the index
var _index;
_index = argument0;
if (is_string(_index))
    {
    _index = asset_get_index(_index);
    }
    
// Retrieve name according to index
switch (_index)
    {
    case (rmTownNew): return "Dadioville";
    case (rmForest):  return "The Forest";
    case (rmDesert):  return "The Desert";
    case (rmSnow): return "The Snowy Mountains";
    case (rmDungeon): return "The Dungeon";
    case (rmSnowCave1): return "Snow Cave 1";
    case (rmSnowCave2): return "Snow Cave 2";
    case (rmSkraggleRoom): return "SkraggeKlaw's Den";
    case (rmDesertCave): return "Desert Cave";
    default: return room_get_name(_index);
    }