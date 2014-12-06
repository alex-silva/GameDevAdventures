/// StringSepNumber(value);
//
//  Takes a real or string, assumes it's a number either way, and adds in comma
//  breaks to make it clearer to read. And returns the comma separated value as
//  a string.
//
//  Note: We work on the string from back to front, this is so we don't need to
//  update the length everytime to get the new offset.
//
//*****************************************************************************

// Get stuff
var _string = string(argument0);
var _length = string_length(_string);
var _commas = floor((_length-1)/3);

// Insert commas into string
for (_i=0; _i<_commas; _i++)
    _string = string_insert(",", _string, _length-2-(_i*3));

// Return string with commas
return _string;