/// AnimationOrder(index, frame1, frame2, ...);
//
//  Here we define the order in which the frames of the given animation index
//  should animate.
//
//*****************************************************************************

var _index, _n;
_index = argument[0];
_n = 0;
for (_n=0; _n<argument_count-1; _n++)
    animationOrder[_index, _n] = argument[_n+1];