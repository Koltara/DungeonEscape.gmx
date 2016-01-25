//f
if mouse_check_button_released(mb_left)
{
    StopX = mouse_x
    StopY = mouse_y
}

if count >= 0 and invulnerable
    count--
else 
{
    invulnerable = false
    count = invulnerableTimer
}


if isCollisionEnemy()
{
    if !invulnerable
    {
        count = invulnerableTimer
        invulnerable = true
        inst = instance_nearest(x,y, oEnemy)
        playerHealth -= inst.enemyDamage
    }

}
if isCollisionEvent()
{
    inst = instance_nearest(x,y, oEvent)
    
    switch (inst.object_index)
    {
        case oKey:
            numberOfKeys++;
            with (inst)
                instance_destroy()
            break;
        case oStair:
            room_goto(inst.nextRoom)
            break;
    }
}

playerState = NORMAL

switch playerState
{
    case NORMAL: 
        if invulnerable
        {
            sprite_index = sPlayerInvulnerable
        } else sprite_index = sPlayer
        break
    case ATTACKING:
        break
}
moveToClick()
