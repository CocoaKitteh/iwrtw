#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
timer = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if timer < 10 { //lasts 0.2 second
    timer += 1;
    for(i = 0; i < 50; i += 1) {
        bl = instance_create(x, y, Blood);
        bl.speed = random(8);
        bl.direction = random(360);
    }
} else {instance_destroy();}
