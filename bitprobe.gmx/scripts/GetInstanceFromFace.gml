/// GetInstanceFromFace(inst);
//
//  Looks ahead in the facing direction from the calling instance. Returns the
//  id of the instance it finds.
//
//*****************************************************************************

var _inst, _offset;
_inst = noone;
_offset = 16;

repeat (12)
    {
    switch (face)
        {
        case (NORTH): _inst = collision_circle(x, y-16-_offset, 8, argument0, false, true); break;
        case (SOUTH): _inst = collision_circle(x, y-16+_offset, 8, argument0, false, true); break;
        case (EAST):  _inst = collision_circle(x+_offset, y-16, 8, argument0, false, true); break;
        case (WEST):  _inst = collision_circle(x-_offset, y-16, 8, argument0, false, true); break;
        /*// Changed from this as it required you to be near perfectly align to activate something
        case (NORTH): _inst = instance_position(x,         y-16-_offset, argument0); break;
        case (SOUTH): _inst = instance_position(x,         y-16+_offset, argument0); break;
        case (EAST):  _inst = instance_position(x+_offset, y-16,        argument0); break;
        case (WEST):  _inst = instance_position(x-_offset, y-16,        argument0); break;
        */
        }
    
    if (_inst != noone)
    && (_inst != id)
        return _inst;
    
    _offset += 8;
    }

return noone;