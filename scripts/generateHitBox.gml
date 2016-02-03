centerX = argument0
centerY = argument1
facing = argument2
distance = argument3

//newX = centerX + cos(facing)*distance
//newY = centerY + sin(facing)*distance_to_object

newX = centerX
newY = centerY

instance_create(newX, newY, oHitBox)


