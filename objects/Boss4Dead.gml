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
    sound_play_single("gayser")
    if(instance_exists(GustavBG)){
        with(GustavBG)
            instance_destroy()
    }
    visible=false
}

if(t>=300){
    if(instance_exists(Player)){
        if(Player.frozen)
            Player.frozen=false
    }
    if(instance_exists(SolidTileDisplay)){
        with(SolidTileDisplay)
            instance_destroy()
    }
}
