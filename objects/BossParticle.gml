#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed=random_range(-2,-4)
hspeed=random_range(-1,1)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale-=0.01
image_yscale=image_xscale
if(image_xscale<=0)
    instance_destroy()
