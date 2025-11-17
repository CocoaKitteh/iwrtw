#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha=3
sound_stop("PIM")
sound_play("PIM")
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha-=0.1
if(image_alpha<=0){
    instance_create(x,0,Laser)
    instance_destroy()
}
