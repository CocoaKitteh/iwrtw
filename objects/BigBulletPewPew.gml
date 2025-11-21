#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=4
image_yscale=4
t=25
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t+=1
if(t>=25){
    for(i=direction-45;i<direction+90;i+=45){
        b=instance_create(x,y,Cherry)
        b.speed=6
        b.direction=i
        b.sprite_index=sprBullet
        b.image_speed=1
    }
    sound_play_single("player_shoot")
    t=0
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
