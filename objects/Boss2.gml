#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spin=0
offset=0
rev=1
image_speed=1/15
image_xscale=3
image_yscale=3
music_play("b2",true)

alarm[3]=50
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
rev*=-1

dir=irandom(360)

for(i=0;i<360;i+=360/12){
    c=instance_create(x,y,OrbDirectionShmingWhatchamacallit)
    c.control=true
    c.xx=x
    c.yy=y
    c.angle=i+dir
    c.distance=0
    c.angspd=0.75*rev
    c.disspd=6
}

sound_play("PIM")

alarm[0]=25
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i=0;i<360;i+=360/12){
    c=instance_create(x,y,OrbDirectionShmingWhatchamacallit)
    c.control=true
    c.xx=x
    c.yy=y
    c.angle=i+dir
    c.distance=0
    c.angspd=0.75*-rev
    c.disspd=6
}

alarm[0]=0
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
offset+=32

if(offset>32)
    offset=0

for(i=offset;i<800;i+=64){
    s=instance_create(i,-31,SpikeThatDestroysItselfWhenItGoesOutOfTheRoomWhyAmINamingItThisItsWayTooFuckingLongThisSucksBruh)
    s.gravity=0.1
}

for(i=offset;i<800;i+=64){
    s=instance_create(i,607,SpikeThatDestroysItselfWhenItGoesOutOfTheRoomWhyAmINamingItThisItsWayTooFuckingLongThisSucksBruh)
    s.gravity=-0.1
    s.sprite_index=sprSpikeUp
}

sound_play("player_shoot")

alarm[2]=25
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spin+=21

c1=instance_create(x,y,Cherry)
c1.direction=spin
c1.gravity_direction=spin
c1.speed=4
c1.gravity=-0.1
c2=instance_create(x,y,Cherry)
c2.direction=-spin
c2.gravity_direction=-spin
c2.speed=4
c2.gravity=-0.1
c3=instance_create(x,y,Cherry)
c3.direction=spin+180
c3.gravity_direction=spin+180
c3.speed=4
c3.gravity=-0.1
c4=instance_create(x,y,Cherry)
c4.direction=-spin+180
c4.gravity_direction=-spin+180
c4.speed=4
c4.gravity=-0.1
sound_play("player_shoot")

alarm[3]=3
