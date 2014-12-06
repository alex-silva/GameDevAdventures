/// SetSpriteFromFace(north, south, east, west);
//
//  Note: The constants used for the "face" variable directly correspond to array index,
//  like so; NORTH = 0, SOUTH = 1, EAST = 2, WEST = 3. So we skip checking the constants
//  altogether here, using them merely as a "keep-in-mind" reference.
//
//*****************************************************************************

// If the first argument is an array, then that's the only one we want
if (is_array(argument[0]))
    {
    var _array;
    _array = argument[0];
    sprite_index = _array[face];
    }

// If it's not an array, expect the rest of the values and pick one
else
    sprite_index = argument[face];