if place_meeting(x-8, y, oPlayer)
{
    if oPlayer.numberOfKeys > 0
    {
        oPlayer.numberOfKeys--
        instance_change(oOpenDoor, false)
    }
}
if place_meeting(x+8, y, oPlayer)
{
    if oPlayer.numberOfKeys > 0
    {
        oPlayer.numberOfKeys--
        instance_change(oOpenDoor, false)
    }
}
if place_meeting(x, y-8, oPlayer)
{
    if oPlayer.numberOfKeys > 0
    {
        oPlayer.numberOfKeys--
        instance_change(oOpenDoor, false)
    }
}
if place_meeting(x, y+8, oPlayer)
{
    if oPlayer.numberOfKeys > 0
    {
        oPlayer.numberOfKeys--
        instance_change(oOpenDoor, false)
    }
}
