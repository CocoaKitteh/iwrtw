#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
count=0
chosen_dialog=irandom(1)
txt=""
cur_text=""
spr=0
timer_because_for_some_reason_this_shit_doesnt_work_properly=0
actual_timer=0
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
    txt=""
    cur_text=""
    count+=1
}

if(input_check_pressed(key_skip) and timer_because_for_some_reason_this_shit_doesnt_work_properly>=1)
    count=-1

if(count<0)
    instance_destroy()

timer_because_for_some_reason_this_shit_doesnt_work_properly+=1
actual_timer+=1

if(string_length(cur_text)<string_length(txt) and actual_timer>=2){
    cur_text+=string_char_at(txt,string_length(cur_text)+1)
    actual_timer=0
    sound_stop("qwertyuiopasdfghjklzxcvbnm")
    sound_play("qwertyuiopasdfghjklzxcvbnm")
}

draw_self()

switch(room){
    case rmBoss1:
        if(chosen_dialog==0){
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
        } else if(chosen_dialog==1){
            switch(count){
                case 0:
                    txt="dude i just found out that"
                    spr=sprKidPortrait
                    break

                case 1:
                    txt="if you set the sprite to 0"
                    spr=sprKidPortrait
                    break

                case 2:
                    txt="you get the file select shming as a portrait"
                    spr=sprKidPortrait
                    break

                case 3:
                    txt="check this out"
                    spr=sprKidPortrait
                    break

                case 4:
                    txt="hi guys :)"
                    spr=0
                    break

                case 5:
                    txt="ok BUT"
                    spr=sprSuedPortrait
                    break

                case 6:
                    txt="why are you saying shming"
                    spr=sprSuedPortrait
                    break

                case 7:
                    txt="what the FUCK is a shming"
                    spr=sprSuedPortrait
                    f=0
                    break

                case 8:
                    txt="NO ONE says shming"
                    spr=sprSuedPortrait
                    break

                case 9:
                    txt="shmuck you"
                    spr=sprKidPortrait
                    break
            }
        }
        if(chosen_dialog==0){
            if(count>1)
                instance_destroy()
        }
        else if(chosen_dialog==1){
            if(count>9)
                instance_destroy()
        }
        break
}

draw_sprite(spr,0,x+32,y+32)
draw_set_color(c_white)
draw_set_font(fTitleSmall)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(x+192,y+32,cur_text)
