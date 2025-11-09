#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0.1
t=0
hp=20
jump_timer=0
gravity=0.4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Player)){
    if(distance_to_object(Player)<=243){
        t+=1
        jump_timer+=random_range(0.15,1)
    } else {
        t=0
        jump_timer=0
    }

    if(t mod 4==1 and t<30){
        c=instance_create(x-27*image_xscale,y-4,Cherry)
        c.speed=12
        c.direction=point_direction(c.x,c.y,Player.x,Player.y)
        c.sprite_index=sprBullet
        c.image_speed=1
        c.depth=1
        sound_play("player_shoot")
    }

    if(t mod 18==1 and t>100 and t<230){
        c=instance_create(x-27*image_xscale,y-4,Cherry)
        c.speed=12
        c.direction=point_direction(c.x,c.y,Player.x,Player.y)
        c.sprite_index=sprBullet
        c.image_speed=1
        c.depth=1
        sound_play("player_shoot")
    }

    if(t>=280)
        t=0

    if(Player.x<x)
        image_xscale=1
    else
        image_xscale=-1

    if(jump_timer>=65){
        vspeed=-8.5
        jump_timer=0
    }
}

if(hp<=0){
    sound_play("death")
    instance_create(x,y,BloodEmitter)
    instance_destroy()
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y+1,Block)){
    sprite_index=sprEVILEDGEEnemyIdle
    image_speed=0.1
} else {
    if(vspeed>=0.05){
        sprite_index=sprEVILEDGEEnemyJump
        image_index=1
    }
    if(vspeed<-0.05){
        sprite_index=sprEVILEDGEEnemyJump
        image_index=0
    }
    image_speed=0
}
#define Collision_Block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!place_free(x,y+vspeed)){
    if(vspeed>0)
        move_contact_solid(270,vspeed)
    vspeed=0
}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hp-=1
sound_play("boss_hit")
instance_destroy_other()
