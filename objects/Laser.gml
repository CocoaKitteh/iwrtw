#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play_single("gayser")
image_yscale=544
t=0
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
view_xview=0
view_yview=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t+=1
view_xview=choose(image_xscale,-image_xscale)*5
view_yview=view_xview
if(t>=10){
    image_xscale-=0.1
    if(image_xscale<=0)
        instance_destroy()
}
