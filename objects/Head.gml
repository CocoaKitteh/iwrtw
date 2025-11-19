#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity=0.4
image_angle=irandom(360)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y+1,Block)){
    if(vspeed>2)
        vspeed*=-0.5
    else if(vspeed>0){
        vspeed=0
        gravity=0
    }
} else if(place_meeting(x,y-1,Block)){
    if(vspeed<0)
        vspeed*=-2
}

if(place_meeting(x+1,y,Block) and hspeed>0)
    hspeed*=-0.5
else if(place_meeting(x-1,y,Block) and hspeed<0)
    hspeed*=-0.5

grounded=place_meeting(x,y+1,Block)

if(grounded){
    if(hspeed>2)
        hspeed-=0.2
    else if(hspeed>0)
        hspeed=0

    if(hspeed<-2)
        hspeed+=0.2
    else if(hspeed<0)
        hspeed=0
}
