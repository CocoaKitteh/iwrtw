#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
count=0
txt=""
spr=0
timer_because_for_some_reason_this_shit_doesnt_work_properly=0
Player.frozen=true
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Player.frozen=false
Boss1.active=true
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(input_check_pressed(key_jump)){
    sound_play("player_air_jump")
    count+=1
}

if(input_check_pressed(key_skip) and timer_because_for_some_reason_this_shit_doesnt_work_properly>=1)
    count=-1

if(count<0)
    instance_destroy()

timer_because_for_some_reason_this_shit_doesnt_work_properly+=1

draw_self()

switch(room){
    case rmBoss1:
        switch(count){
            case 0:
                txt="
___________________________________________
FATAL ERROR in
action number 1
of Draw Event
for object DialogBox:

COMPILATION ERROR in code action
Error in code at line 21:
           }
           ^
at position 10: Variable name expected.
"
                spr=sprSuedPortrait
                break

            case 1:
                txt="ok"
                spr=sprKidPortrait
                break
        }
        if(count>1)
            instance_destroy()
        break
}

draw_sprite(spr,0,x+32,y+32)
draw_set_color(c_white)
draw_set_font(fTitleSmall)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(x+192,y+32,txt)
