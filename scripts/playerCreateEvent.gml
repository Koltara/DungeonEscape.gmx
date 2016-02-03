max_speed = 2;
StopX = 0;
StopY = 0;
invulnerableTimer = 60
count = invulnerableTimer;

can_attack = true
swing_speed = 3
swing_count = swing_speed

x = 32
y = 32

//Player States
NORMAL = 0
ATTACKING = 1
RUNNING = 2


//
numberOfKeys = 0;
playerState = NORMAL

/*
Combat Statistics
*/
invulnerable = false
playerHealth = 50
playerDamage = 20



setCollisionBounds(-4, 4, 4, -4)
