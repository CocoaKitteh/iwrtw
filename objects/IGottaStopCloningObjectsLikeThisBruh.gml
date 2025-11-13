#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15;

bounce = false;
destroy_outside_room = true;
destroy_outside_view=false
t=0
image_alpha=0.5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t+=1
if(t>=100)
    image_alpha=1
if bounce {
    if !place_free(x + hspeed, y) {
        hspeed *= -1;
    }
    if !place_free(x, y + vspeed) {
        vspeed *= -1;
    }
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if destroy_outside_room {
    if x < 0 || x >= room_width || y < 0 || y >= room_height {
        instance_destroy();
    }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field bounce: bool
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(destroy_outside_view)
    instance_destroy()
