///Troca sprite do player baseado em seu estado
if (!instance_exists(objPlayer))
    exit;

with(objPlayer)
{
    image_speed = 1;
    var sprite = "sprPlayer"
  
    
    if (playerVivo == false)
    {
        sprite+= "Die";
        image_speed = (room_speed / alarmPlayerDeath) / 2;
    }
   // else if (verticalSpeed == 0 && isJumping)
    //{//
      //  sprite+= "JumpEnd";
      //  image_speed = 0.5
   // }
    else if (move == 0)
        sprite+= "Idle";
    else if (moveSpeed == round(inercia) && !isJumping)
    {
        sprite+= "Run";
        image_speed *= 1.5;
    }
    else
    {    
        switch (playerDirection)
        {
            case Direction.Left       : sprite += "Move"; image_xscale = -1; break;
            case Direction.Right      : sprite += "Move"; image_xscale =  1; break;
            case Direction.JumpLeft   : 
            {
            /*if //(isFalling && round(sign(verticalSpeed)) >= sign(jumpSpeed) * 2)
              //  sprite+= "Descending";
           // else if (isFalling && round(sign(verticalSpeed)) >= sign(jumpSpeed))
             //   sprite+= "JumpEnd";
           // else if (round(sign(verticalSpeed)) <= sign(jumpSpeed) / 8)
           // {
            //    sprite += "JumpStart";
           // }
            else */if (round(sign(verticalSpeed)) <= sign(jumpSpeed))
                sprite += "Ascend"    
            else if (verticalSpeed < 100)
                sprite += "Descend"
               
            image_xscale = -1; break;
            }
            case Direction.JumpRight :
            {
            /*if //(isFalling && round(sign(verticalSpeed)) >= sign(jumpSpeed) * 2)
              //  sprite+= "Descending";
           // else if (isFalling && round(sign(verticalSpeed)) >= sign(jumpSpeed))
             //   sprite+= "JumpEnd";
           // else if (round(sign(verticalSpeed)) <= sign(jumpSpeed) / 8)
           // {
            //    sprite += "JumpStart";
           // }
            else */if (round(sign(verticalSpeed)) <= sign(jumpSpeed))
                sprite += "Ascend"    
            else if (verticalSpeed < 100)
                sprite += "Descend" 
            image_xscale = 1; break;
            }
        }
    }
    sprite_index = ds_map_find_value(global.mapSprites, sprite);
}