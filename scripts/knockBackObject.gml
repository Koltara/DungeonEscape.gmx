targetX = argument0
targetY = argument1
inst = argument2
damage = argument3

xPrev = inst.x
yPrev = inst.y

inst.enemyHealth -= damage
    
    
    
    if knockbackTargetX > xPrev
        for (inst.x=inst.x; inst.x < knockbackTargetX; inst.x+= 1)
        {
            with (inst)
                if isCollisionWall()
                    break

        }
    if knockbackTargetX < xPrev
        for (inst.x=inst.x; inst.x > knockbackTargetX; inst.x-= 1)
        {
           with (inst)
                if isCollisionWall()
                    break

        }
    if knockbackTargetY > yPrev
        for (inst.y=inst.y; inst.y < knockbackTargetY; inst.y+= 1)
        {
            with (inst)
                if isCollisionWall()
                    break

        }
    if knockbackTargetY < yPrev
        for (inst.y=inst.y; inst.y > knockbackTargetY; inst.y-= 1)
        {
            with (inst)
                if isCollisionWall()
                    break

        }
