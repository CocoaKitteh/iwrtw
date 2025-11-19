#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
attack=-1
cur_attack=-1
weaoweaoweaow=0
hp=500
phase=1
if(room==rmBoss2){
    active=false
    instance_create(16,368,DialogBox)
} else
    active=true
switching=false
attacking=false
alarm_timer=0
timer=200
superspinshming=0
spin=0
offset=0
rev=1
instance_create(0,0,Flashbang)
b=instance_create(-32,512,Block)
b.image_yscale=2
sound_volume("b1start",0.5)
sound_play("b1start")
alarm[6]=1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=0
alarm_timer+=25
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
    c.disspd=4
}

sound_play("PIM")

if(alarm_timer>100)
    alarm[1]=1

alarm[0]=25
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm_timer=0

for(i=0;i<360;i+=360/12){
    c=instance_create(x,y,OrbDirectionShmingWhatchamacallit)
    c.control=true
    c.xx=x
    c.yy=y
    c.angle=i+dir
    c.distance=0
    c.angspd=0.75*-rev
    c.disspd=4
}

instance_create(0,0,ScreenShake)

alarm[0]=0
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=2
offset+=40

if(offset>40)
    offset=0

for(i=offset;i<800;i+=80){
    s=instance_create(i+16,-31+16,Orb)
    s.gravity=0.1
}

for(i=offset;i<800;i+=80){
    s=instance_create(i+16,607+16,Orb)
    s.gravity=-0.1
}

sound_play("PIM")

alarm[2]=25
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=3
spin+=26

c1=instance_create(x,y,Cherry)
c1.direction=spin
c1.gravity_direction=spin
c1.gravity=0.1
c2=instance_create(x,y,Cherry)
c2.direction=-spin
c2.gravity_direction=-spin
c2.gravity=0.1
c3=instance_create(x,y,Cherry)
c3.direction=spin+180
c3.gravity_direction=spin+180
c3.gravity=0.1
c4=instance_create(x,y,Cherry)
c4.direction=-spin+180
c4.gravity_direction=-spin+180
c4.gravity=0.1
sound_play("player_shoot")

alarm[3]=5
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=4
spin+=14
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin+45
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin+90
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin+135
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin+180
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin+225
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin+270
s=instance_create(x,y,Orb)
s.speed=5
s.direction=spin+315
sound_play("PIM")
alarm[4]=10
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switching=false
while(attack==cur_attack)
    attack=choose(0,2,3,4)
alarm[attack]=1
sound_play("block_change")
attacking=true
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// bubbles!!!!! :3c
// (am i the only one who shminks the word bubble sounds cute)

b=instance_create(irandom(800),608,Bubble)
b.vspeed=random_range(-3,-6)
b.hspeed=random_range(-1,1)
alarm[6]=3
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active){
    if(!sound_isplaying("b2")  and room==rmBoss2)
        music_play("b2",true)

    if(!switching)
        timer+=1

    if(timer>=275){
        alarm[0]=0
        alarm[1]=0
        alarm[2]=0
        alarm[3]=0
        alarm[4]=0
        alarm[5]=100
        timer=0
        switching=true
        attacking=false
    }

    if(switching and !attacking){
        if(phase!=0){
            if(!instance_exists(PlayerShming))
                instance_create(Player.x,Player.y,PlayerShming)
            x=lerp(x,PlayerShming.x,0.1)
            y=lerp(y,PlayerShming.y,0.1)
        }
    } else {
        if(instance_exists(PlayerShming)){
            with(PlayerShming)
                instance_destroy()
        }
    }

    if(hp==375 and phase==1){
        repeat(3){
            c=instance_create(x,y,IGottaStopCloningObjectsLikeThisBruh)
            c.speed=1
            c.direction=irandom(360)
            c.bounce=true
            c.destroy_outside_room=false
        }
        phase=2
    }

    if(hp==250 and phase==2){
        repeat(3){
            c=instance_create(x,y,IGottaStopCloningObjectsLikeThisBruh)
            c.speed=1
            c.direction=irandom(360)
            c.bounce=true
            c.destroy_outside_room=false
        }
        phase=3
    }

    if(hp==125 and phase==3){
        repeat(3){
            c=instance_create(x,y,IGottaStopCloningObjectsLikeThisBruh)
            c.speed=1
            c.direction=irandom(360)
            c.bounce=true
            c.destroy_outside_room=false
        }
        phase=4
    }

    if(!instance_exists(Player)){
        alarm[0]=0
        alarm[1]=0
        alarm[2]=0
        alarm[3]=0
        alarm[4]=0
        alarm[5]=0
        timer=-1
    }

    if(instance_exists(Player)){
        if(Player.x<x)
            image_xscale=1
        else
            image_xscale=-1
    }

    if(hp<=0){
        instance_create(x,y,BloodEmitter)
        instance_create(0,0,ScreenShake)
        with(SolidTileDisplay)
            instance_destroy()
        sound_play("death")
        sound_play("OOAA")
        music_stop()
        instance_destroy()
    }
}

weaoweaoweaow+=1
y+=sin(weaoweaoweaow/20)/2
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active)
    hp-=1
sound_play("boss_hit")
instance_destroy_other()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_healthbar(4,4,796,28,hp/5,c_white,c_red,c_lime,180,true,true)
