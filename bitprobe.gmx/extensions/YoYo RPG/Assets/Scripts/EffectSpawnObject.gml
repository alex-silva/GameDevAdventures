/// EffectSpawnObject(questMarker, object);
//
//  Takes 2 objects. This script will create the second object at the first
//  object's position.
//
//  Usage:
//  EFFECT
//
//*****************************************************************************

// Get location object, and object to spawn
var _location, _object;
_location = argument0;
_object = argument1;

// Create, also set permadeath so it doesn't "hide" on death
var _inst;
_inst = instance_create(_location.x, _location.y, _object);
_inst.permadeath = true;
