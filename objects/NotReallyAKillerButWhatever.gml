#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
rnd=0
triggered=false
image_speed=1/15
alarm[0]=25
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
rnd=irandom(360)
for(i=0;i<360;i+=360/8){
    c=instance_create(x,y,Cherry)
    c.speed=3
    c.direction=i+rnd
    c.destroy_outside_view=true
}
if(triggered)
    alarm[0]=25
else
    alarm[0]=50
