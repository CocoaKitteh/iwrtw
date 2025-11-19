#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Bullet)){
    with(Bullet)
        instance_destroy()
}
attack=-1
cur_attack=-1
if(room==rmBoss1){
    active=false
    instance_create(16,368,DialogBox)
} else
    active=true
switching=false
timer=200
offset=0
phase=1
attacking=false
initial_hp=500
hp=initial_hp
dir=0
dir2=120
dir3=240
instance_create(0,0,Flashbang)
instance_create(0,0,ParticleSpawner)
instance_create(0,0,StarSpawner)
instance_create(x,y,Boss1Indicator)
sound_volume("b1start",0.5)
sound_play("b1start")
background_index[0]=bgBoss1
background_index[1]=bgRedShit
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=0
instance_create(x-52*image_xscale,y-60,BigBulletBoomBoom)
sprite_index=sprSuedShootB
image_speed=0.5
sound_play("player_shoot")
if(image_index>2)
    image_index=2
alarm[0]=150
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=1
if(instance_exists(Player)){
    bb=instance_create(x-65*image_xscale,y-37,BigBulletPewPew)
    bb.speed=3
    bb.direction=point_direction(bb.x,bb.y,Player.x,Player.y)
}
sprite_index=sprSuedShootA
image_speed=0.5
if(image_index>2)
    image_index=2
alarm[1]=90
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=2
rand=irandom(360)
for(i=0;i<360;i+=360/16){
    b1=instance_create(x-65*image_xscale,y-37,Cherry)
    b1.speed=2
    b1.direction=i+rand
    b1.gravity=0.2
    b1.gravity_direction=i
    b1.image_xscale=1.5
    b1.image_yscale=1.5
    b1.sprite_index=sprBullet
    b1.image_speed=1
    b2=instance_create(x-65*image_xscale,y-37,Cherry)
    b2.speed=1
    b2.direction=i+rand
    b2.gravity=0.1
    b2.gravity_direction=-i
    b2.image_xscale=2
    b2.image_yscale=2
    b2.sprite_index=sprBullet
    b2.image_speed=1
}
sound_play("player_shoot")
sprite_index=sprSuedShootA
image_speed=0.5
if(image_index>2)
    image_index=2
alarm[2]=35
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(offset>=48)
    offset=0

for(i=offset;i<800;i+=64){
    s=instance_create(i,0,Cherry)
    s.gravity=0.2
}

offset+=8

alarm[3]=35
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Player)){
    b=instance_create(x-65*image_xscale,y-37,Cherry)
    b.speed=8
    b.direction=point_direction(b.x,b.y,Player.x,Player.y)
    b.sprite_index=sprBullet
    b.image_speed=1
    sound_play("player_shoot")
}

sprite_index=sprSuedShootA
image_speed=0.5
if(image_index>2)
    image_index=2

alarm[4]=25
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switching=false
while(attack==cur_attack)
    attack=choose(0,1,2,6)
alarm[attack]=1
sound_play("block_change")
attacking=true
#define Alarm_6
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
cur_attack=6
dir+=16
dir2+=19
dir3+=22
b1=instance_create(x-65*image_xscale,y-37,Cherry)
b1.speed=4
b1.direction=dir
b1.sprite_index=sprBullet
b1.image_speed=1
b2=instance_create(x-65*image_xscale,y-37,Cherry)
b2.speed=5
b2.direction=dir2
b2.sprite_index=sprBullet
b2.image_speed=1
b3=instance_create(x-65*image_xscale,y-37,Cherry)
b3.speed=6
b3.direction=dir3
b3.sprite_index=sprBullet
b3.image_speed=1
sound_play("player_shoot")
sprite_index=sprSuedShootA
image_speed=1
if(image_index>2)
    image_index=2
alarm[6]=2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active){
    if(!sound_isplaying("b1")  and room==rmBoss1)
        music_play("b1",true)

    if(!switching)
        timer+=1

    if(timer>=250 and phase!=2){
        alarm[0]=0
        alarm[1]=0
        alarm[2]=0
        alarm[6]=0
        alarm[5]=100
        if(x>400)
            path_start(ptBoss1,8,0,false)
        else
            path_start(ptBoss1Rev,8,0,false)
        timer=0
        switching=true
        attacking=false
    }

    if(hp<=150)
        phase=2

    if(phase==2 and timer>=0){
        alarm[0]=0
        alarm[1]=0
        alarm[2]=0
        alarm[5]=0
        alarm[6]=0
        alarm[3]=100
        alarm[4]=100
        switching=true
        timer=-1
        sprite_index=sprSuedIdle
        sound_play("b1p2")
        instance_create(x,y,Power)
    }

    if(instance_exists(Power)){
        Power.x=x
        Power.y=y
    }

    if(distance_to_object(Player)<=96){
        repeat(100){
            s=instance_create(x,y,Cherry)
            s.speed=15
            s.direction=random(360)
            s.sprite_index=sprBullet
            s.image_speed=1
            s.image_xscale=2
            s.image_yscale=2
        }
        sound_play("player_shoot")
    }

    if(distance_to_object(Player)>96){
        if(y<=439)
            sprite_index=sprSuedJump
        else {
            if(!attacking)
                sprite_index=sprSuedIdle
            if(instance_exists(Player)){
                if(Player.x>x)
                    image_xscale=-1
                else
                    image_xscale=1
            }
        }
    } else
        sprite_index=sprEvilFuckedupUhhShotGunHahaLolLMAOHAHALeedHe254Ok

    if(!instance_exists(Player)){
        alarm[0]=0
        alarm[1]=0
        alarm[2]=0
        alarm[3]=0
        alarm[4]=0
        alarm[5]=0
        alarm[6]=0
        timer=-1
    }

    if(hp<=0){
        with(ParticleSpawner)
            instance_destroy()
        with(StarSpawner)
            instance_destroy()
        with(SolidTileDisplay)
            instance_destroy()
        background_index[0]=bgStage1
        background_index[1]=noone
        instance_create(0,0,Flashbang)
        if(instance_exists(Cherry)){
            with(Cherry)
                instance_destroy()
        }
        instance_create(x,y,BloodEmitter)
        instance_create(0,0,ScreenShake)
        sound_play("death")
        sound_play("OOAA")
        music_stop()
        instance_destroy()
    }
}
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
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(sprite_index!=sprEvilFuckedupUhhShotGunHahaLolLMAOHAHALeedHe254Ok)
    image_index=image_number-1
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_healthbar(4,4,796,28,hp/5,c_white,c_red,c_lime,180,true,true)
