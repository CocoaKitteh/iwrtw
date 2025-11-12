#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha-=0.01
image_xscale-=0.01
image_yscale=image_xscale
if(image_alpha<=0)
    instance_destroy()
