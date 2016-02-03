    grid = mp_grid_create(0,0,room_width/8,room_height/8,8,8);
    path = path_add();
    mp_grid_add_instances(path,oWall,true);
    
    if oPlayer.numberOfKeys > 0
    {

    } else mp_grid_add_instances(path,oClosedDoor,true);
           
    mp_grid_path(grid,path,x,y,StopX,StopY,true);
    path_start(path,max_speed,"",true);
   
    Distance = point_distance(x,y,StopX,StopY)
    if Distance < max_speed
    {
        move_towards_point(StopX,StopY,Distance);
        hspeed = 0;
        vspeed = 0;

    }     
// if the path cannot be obtained, don't move.
    if (x == 0 && y == 0)
    {
        x = xprevious;
        y = yprevious;
        path_end();
        StopX = x;
        StopY = y;
    }
    if path_get_length(path) > 128
       {
        x = xprevious;
        y = yprevious;
        path_end();
        StopX = x;
        StopY = y;
       }
    if path_get_length(path) > 0
        direction = getPathDirection(path, 0, 2)
    
