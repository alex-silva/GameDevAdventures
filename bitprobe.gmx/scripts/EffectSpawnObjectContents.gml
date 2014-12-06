/// EffectSpawnObjectContents(questMarker, object, spawnObject, spawnNumber);
//
//  Takes 2 objects. This script will create the second object at the first
//  object's position. It also takes an object to spawn, assuming it's a chest,
//  and the number of that object to spawn.
//
//  Usage:
//  EFFECT
//
//*****************************************************************************

// Gte stuff
var _location, _object, _spawnObject, _spawnNumber;
_location = argument0;
_object = argument1;
_spawnObject = argument2;
_spawnNumber = argument3;

// Create, and set all the things
var _inst;
_inst = instance_create(_location.x, _location.y, _object);
_inst.containsItem = true;
_inst.canDropOnGround = true;
_inst.permadeath = true;
_inst.item[ITEM_OBJECT] = _spawnObject;
_inst.item[ITEM_COUNT] = _spawnNumber;