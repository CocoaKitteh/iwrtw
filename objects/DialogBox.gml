#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
count=0
chosen_dialog=irandom(3)
txt=""
cur_text=""
snd="dialog"
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
Boss2.active=true
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
    sound_stop(snd)
    sound_play(snd)
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
                    snd="dialog"

                case 1:
                    txt="ok"
                    spr=sprKidPortrait
                    snd="dialog"
                    break
            }
            if(count>1)
                instance_destroy()
        } else if(chosen_dialog==1){
            switch(count){
                case 0:
                    txt="dude i just found out that"
                    spr=sprKidPortrait
                    snd="dialog"
                    break

                case 1:
                    txt="if you set the sprite to 0"
                    spr=sprKidPortrait
                    snd="dialog"
                    break

                case 2:
                    txt="you get the file select shming as a portrait"
                    spr=sprKidPortrait
                    snd="dialog"
                    break

                case 3:
                    txt="check this out"
                    spr=sprKidPortrait
                    snd="dialog"
                    break

                case 4:
                    txt="hi guys :)"
                    spr=0
                    snd="dialog"
                    break

                case 5:
                    txt="ok BUT"
                    spr=sprSuedPortrait
                    snd="dialog"
                    break

                case 6:
                    txt="why are you saying shming"
                    spr=sprSuedPortrait
                    snd="dialog"
                    break

                case 7:
                    txt="what the FUCK is a shming"
                    spr=sprSuedPortrait
                    snd="dialog"
                    f=0
                    break

                case 8:
                    txt="NO ONE says shming"
                    spr=sprSuedPortrait
                    snd="dialog"
                    break

                case 9:
                    txt="shmuck you"
                    spr=sprKidPortrait
                    snd="dialog"
                    break
            }
            if(count>9)
                instance_destroy()
        } else if(chosen_dialog==2){
            switch(count){
                case 0:
                    txt="i used to be a cherry before..."
                    spr=sprSuedPortrait
                    snd="dialog"
                    break

                case 1:
                    txt="but now... i have evolved..."
                    spr=sprSuedPortrait
                    snd="dialog"
                    break

                case 2:
                    txt="i have FLESH"
                    spr=sprSuedPortrait
                    snd="dialog"
                    break

                case 3:
                    txt="metamorphosis"
                    spr=sprKidPortrait
                    snd="dialog"
                    break
            }
            if(count>3)
                instance_destroy()
        } else if(chosen_dialog==3){
            txt="maybe its the way youre dressed"
            spr=sprSuedPortrait
            snd="maybe"
            if(count>1)
                instance_destroy()
        }
        break

    case rmBoss2:
        if(chosen_dialog==0 or chosen_dialog==2){
            switch(count){
                case 0:
                    txt="hello"
                    spr=sprMessiPortrait
                    snd="dialog"
                    break

                case 1:
                    txt="how are you"
                    spr=sprMessiPortrait
                    snd="dialog"
                    break

                case 2:
                    txt="i am under the water"
                    spr=sprMessiPortrait
                    snd="dialog"
                    break

                case 3:
                    txt="please help me"
                    spr=sprMessiPortrait
                    snd="dialog"
                    break

                case 4:
                    txt="here too much raining uuuuu"
                    spr=sprMessiPortrait
                    snd="dialog"
                    break

                case 5:
                    txt="what"
                    spr=sprKidPortrait
                    snd="dialog"
                    break
            }
            if(count>5)
                instance_destroy()
        } else if(chosen_dialog==1 or chosen_dialog==3){
            switch(count){
                case 0:
                    txt="im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im NOT a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder
im a good coder im a good coder im a good coder"
                    spr=sprGoodCoderPortrait
                    snd="balls"
                    break

                case 1:
                    txt="shut the fuck up"
                    spr=sprKidPortrait
                    snd="dialog"
                    break
            }
            if(count>1)
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
