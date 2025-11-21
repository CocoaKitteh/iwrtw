#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=8
image_yscale=8
t=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_yscale=image_xscale

x=lerp(x,400,0.1)
y=lerp(y,100,0.1)

t+=1

if(x>399 and x<401 and t mod 3==0){
    repeat(2){
        c=instance_create(x,y,Cherry)
        c.gravity=0.2
        c.speed=6
        c.direction=irandom(360)
        c.sprite_index=sprBullet
        c.image_speed=1
    }
    image_xscale-=0.3
    sound_play_single("player_shoot")
}

if(image_xscale<=0)
    instance_destroy()
