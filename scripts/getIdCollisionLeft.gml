/*
An object can only use this script after calling "setCollisionBounds."
0: Number of pixels left of the collision rectangle to check for a collision
with a solid object.
returns the ID of the solid
*/
calculateCollisionBounds()
return collision_line(round(lb-argument0),round(tb),round(lb-argument0),round(bb-1),argument1,1,1)