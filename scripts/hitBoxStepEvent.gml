if duration <= 0
    instance_destroy()
    
if isCollisionEnemy()
{
    inst = instance_nearest(x, y, oEnemy)
    
    enemyDirection = point_direction(x, y, inst.x, inst.y)
    knockbackTargetX = inst.x + cos(enemyDirection)*knockback
    knockbackTargetY = inst.y + sin(enemyDirection)*knockback
    
    knockBackObject(knockbackTargetX, knockbackTargetY, inst, damage)
    instance_destroy()
    
    
}
x = oPlayer.x
y = oPlayer.y
    
duration--
