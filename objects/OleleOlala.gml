#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0.2
t=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Player)){
    t+=1
    if(t<100 and t mod 2==0){
        c=instance_create(x,y,Cherry)
        c.speed=random_range(3,7)
        c.direction=random(360)
    }
}

if(!instance_exists(Player)){
    image_speed=0
    t=0
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
if(input_check_pressed(vk_space)){
    draw_text(32,32,t)
}
