#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t+=1
if(t>=200 and visible){
    instance_create(0,0,Flashbang)
    instance_create(0,0,ScreenShake)
    sound_play("gayser")
    visible=false
}

if(t>=400){
    w=instance_create(Player.x-16,Player.y-16,Warp)
    w.room_to=rSampleClear
    w.autosave=true
}
