#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/5
image_xscale=6
image_yscale=6
hspeed=-4
spin=0
hp=100
alarm[0]=15
alarm[1]=30
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed=0
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spin+=14
b=instance_create(x,y,Cherry)
b.speed=8
b.direction=spin
b.sprite_index=sprBullet
b.image_speed=1
b.image_xscale=2
b.image_yscale=2
b=instance_create(x,y,Cherry)
b.speed=8
b.direction=spin+90
b.sprite_index=sprBullet
b.image_speed=1
b.image_xscale=2
b.image_yscale=2
b=instance_create(x,y,Cherry)
b.speed=8
b.direction=spin+180
b.sprite_index=sprBullet
b.image_speed=1
b.image_xscale=2
b.image_yscale=2
b=instance_create(x,y,Cherry)
b.speed=8
b.direction=spin+270
b.sprite_index=sprBullet
b.image_speed=1
b.image_xscale=2
b.image_yscale=2
alarm[1]=2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(hp<=0){
    sound_play_single("death")
    instance_create(0,0,Flashbang)
    with(Cherry)
        instance_destroy()
    instance_create(x,y,BloodEmitter)
    background_hspeed[0]=-0.5
    background_hspeed[1]=0
    music_stop()
    instance_destroy()
}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hp-=1
sound_play_single("boss_hit")
instance_destroy_other()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_healthbar(4,4,796,28,hp,c_white,c_red,c_lime,180,true,true)
