#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spin=0
hspeed=4
alarm[0]=1
image_speed=1/5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spin+=14
b=instance_create(x,y,Cherry)
b.sprite_index=sprBullet
b.image_speed=1
b.image_xscale=2
b.image_yscale=2
b.speed=8
b.direction=spin
b=instance_create(x,y,Cherry)
b.sprite_index=sprBullet
b.image_speed=1
b.image_xscale=2
b.image_yscale=2
b.speed=8
b.direction=-spin
sound_play_single("player_shoot")
alarm[0]=3
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
