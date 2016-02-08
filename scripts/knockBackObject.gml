targetX = argument0
targetY = argument1
inst = argument2
damage = argument3

xPrev = inst.x
yPrev = inst.y

inst.enemyHealth -= damage
    
    
    
    if targetX > xPrev
        for (inst.x=inst.x; inst.x < targetX; inst.x++)
        {
            with (inst)
            {
                if isCollisionWall()
                {
                break
                break
                }
            }

        }
    if targetX < xPrev
        for (inst.x=inst.x; inst.x > targetX; inst.x-= 1)
        {
           with (inst)
                if isCollisionWall()
                   {
                break
                break
                }
        }
    if targetY > yPrev
        for (inst.y=inst.y; inst.y < targetY; inst.y+= 1)
        {
            with (inst)
                if isCollisionWall()
                    {
                break
                break
                }

        }
    if targetY < yPrev
        for (inst.y=inst.y; inst.y > targetY; inst.y-= 1)
        {
            with (inst)
                if isCollisionWall()
                    {
                break
                break
                }

        }
