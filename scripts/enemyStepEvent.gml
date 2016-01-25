var enemy = instance_nearest(x, y, oPlayer)

grid = mp_grid_create(0,0,room_width/8,room_height/8,8,8);
path = path_add();
mp_grid_add_instances(path,oWall,true);
    
           
mp_grid_path(grid,path,x,y,StopX,StopY,true);
path_start(path,enemySpeed,"",true);
   
Distance = point_distance(x,y,StopX,StopY)
if Distance < enemySpeed
   {
       move_towards_point(StopX,StopY,Distance);
       hspeed = 0;
       vspeed = 0;
   }     
    
if foundPlayer
{
    StopX = enemy.x;
    StopY = enemy.y;
    
    
}
else {
    StopX = originalX
    StopY = originalY
}

foundPlayer = !collision_line( x, y, enemy.x, enemy.y, oWall, true, true) 


