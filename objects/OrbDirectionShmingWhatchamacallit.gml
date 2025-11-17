#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
disspd=0
angspd=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(control){
    x=xx+distance*(cos(degtorad(angle)))
    y=yy-distance*(sin(degtorad(angle)))
    distance+=disspd
    angle+=angspd
}
o=instance_create(x,y,OrbTrail)
o.sprite_index=sprite_index
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
