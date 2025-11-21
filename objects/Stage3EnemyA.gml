#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=15
alarm[1]=30
alarm[2]=220
image_speed=1/5
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
if(instance_exists(Player)){
    b=instance_create(x,y,Cherry)
    b.sprite_index=sprBullet
    b.image_speed=1
    b.speed=8
    b.direction=point_direction(x,y,Player.x,Player.y)
    b.image_xscale=2
    b.image_yscale=2
}

sound_play_single("player_shoot")

alarm[1]=25
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1]=0
hspeed=spd
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
