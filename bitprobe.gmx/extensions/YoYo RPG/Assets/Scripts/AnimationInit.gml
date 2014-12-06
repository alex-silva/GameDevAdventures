/// AnimationInit(index, stretch, type, background1, background2, ...);
//
//  Tileset animation is achieved by; Creating an array of backgrounds, this ranges from [0]
//  to [numberOfBackgrounds+1], where [0] is where the animation takes place, and all other
//  positions hold static frames. So each time the animation is updated, [0] is replaced by
//  copying one of the static frames into it.
//  An array is also created to determine in which order these frames should be played, this
//  provides extra control without having to double up on background resources.
//
//*****************************************************************************

var _index;
_index = argument[0];

// Variables for tileset animation
currentFrame[_index] = 0;               // Current frame of animation
animationStretch[_index] = argument[1]; // How many steps-per-frame
animationTimer[_index] = 1;             // Counter for the time you set above
animationType[_index] = argument[2];    // How animation behaves: LOOP (a>b), BOUNCE (a>b, b<a), SWING (a>b, b, b<a, a)
animationDirection[_index] = 1;         // Direction of animation

// [0] should be the background you used in the room editor
// We also assign this to _buffer, essentially making a copy
var _buffer;
_buffer = background_create_colour(1, 1, $000000);
animationSet[_index, 0] = argument[3];                   // This one will always be changed (animated)
background_assign(_buffer, animationSet[_index, 0]); // This is a copy, but doesn't change (frame)
animationSet[_index, 1] = _buffer;

// Specify backgrounds, [1] should always be _buffer (same as [0] as assigned above)
for (_n=4; _n<argument_count; _n++)
    animationSet[_index, _n-2] = argument[_n];