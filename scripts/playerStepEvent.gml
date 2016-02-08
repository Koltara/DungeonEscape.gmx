//f
if room = rm_TitleScreen
    instance_destroy()

if keyboard_check_released(ord('R'))
    game_restart()
attackButton = keyboard_check_released(ord('X'));

if playerHealth <= 0
    game_restart()

if can_attack and attackButton
{
    generateHitBox(x,y, direction, 8)
    playerState = SPINNING
    can_attack = false
}

if !can_attack
{
    swing_count--
}
if swing_count <= 0
{
    can_attack = true
    swing_count = swing_speed
}

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
if (x != StopX or y != StopY) and playerState != SPINNING
    playerState = RUNNING
else if playerState != SPINNING
    playerState = NORMAL


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

switch playerState
{

    case NORMAL:  
    
        image_speed = 1
        if invulnerable
        {
            sprite_index = sPlayerInvulnerable
        } else sprite_index = sPlayer
        break
    case ATTACKING:
        break
    case RUNNING:
        sprite_index = sPlayerRunning
        break
    case SPINNING:
        sprite_index = sPlayerSpinning
        image_speed = 2
        if image_index > 5
            playerState = NORMAL
}

image_angle = direction
moveToClick()
