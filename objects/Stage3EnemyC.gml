#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed=4
alarm[0]=15
alarm[1]=30
alarm[2]=220
image_speed=1/15
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed=0
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
rnd=irandom(360)
for(i=0;i<360;i+=360/12){
    b=instance_create(x,y,CherryDirectionShmingWhatchamacallit)
    b.sprite_index=sprBullet
    b.image_speed=1
    b.image_xscale=2
    b.image_yscale=2
    b.xx=x
    b.yy=y
    b.distance=0
    b.angle=i+rnd
    b.control=true
    b.disspd=4
    b.angspd=0.5
    b=instance_create(x,y,CherryDirectionShmingWhatchamacallit)
    b.sprite_index=sprBullet
    b.image_speed=1
    b.image_xscale=2
    b.image_yscale=2
    b.xx=x
    b.yy=y
    b.distance=0
    b.angle=i+rnd
    b.control=true
    b.disspd=4
    b.angspd=-0.5
}
sound_play("player_shoot")
alarm[1]=25
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1]=0
vspeed=-4
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
