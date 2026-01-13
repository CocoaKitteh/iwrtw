#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity=0.4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle+=hspeed*-5
#define Collision_Block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!other.solid)
    exit

move_bounce_solid(1)
hspeed=median(-6,hspeed,6)
speed=max(0,speed/2-0.5)
