#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Player)){
    if(distance_to_object(Player)<2 and Player.y<bbox_top-8)
        vspeed=-2
}

event_inherited()
