#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
stopped=false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha-=0.05
if(image_alpha<=0)
    instance_destroy()

alarm[0]=1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
o=instance_create(x,y,DaggerTrail)
o.image_angle=image_angle
#define Collision_Block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!stopped){
    speed=0
    alarm[0]=10
    stopped=true
}
