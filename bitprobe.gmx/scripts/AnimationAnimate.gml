/// AnimationAnimate(index);
//
//*****************************************************************************

var _index;
_index = argument0;

// Decrement and check timer for this animation
if (animationTimer[_index]-- <= 0)
    {
    // Reset timer, go to next frame. Copy a new static frame into animationSet[index, 0]
    animationTimer[_index] = animationStretch[_index];
    currentFrame[_index] += animationDirection[_index];
    background_assign(animationSet[_index, 0], animationSet[_index, animationOrder[_index, currentFrame[_index]]]);
    
    // Animation end
    if (animationDirection[_index]==-1 && currentFrame[_index]==0)
    || (animationDirection[_index]==1  && currentFrame[_index]==array_length_2d(animationOrder, _index)-1)
        {
        switch (animationType[_index])
            {
            case (Animation.loop):
                currentFrame[_index] = -1;
                break;
            case (Animation.bounce):
                animationDirection[_index] *= -1;
                break;
            case (Animation.swing):
                currentFrame[_index] += animationDirection[_index];
                animationDirection[_index] *= -1;
                break;
            }
        }
    }