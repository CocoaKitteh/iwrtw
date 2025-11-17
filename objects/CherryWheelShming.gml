#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i=0;i<360;i+=360/8){
    b=instance_create(x,y,CherryDirectionShmingWhatchamacallit)
    b.sprite_index=sprBullet
    b.image_speed=1
    b.image_xscale=2
    b.image_yscale=2
    b.xx=x
    b.yy=y
    b.distance=128
    b.angle=i
    b.control=true
    b.disspd=0
    b.angspd=1
}
