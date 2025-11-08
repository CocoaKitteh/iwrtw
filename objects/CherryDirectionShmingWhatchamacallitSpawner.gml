#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i=0;i<360;i+=360/12){
    c=instance_create(x,y,CherryDirectionShmingWhatchamacallit)
    c.control=true
    c.xx=x
    c.yy=y
    c.angle=i
    c.distance=0
    c.angspd=1
    c.disspd=3
}
