#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0.2
t=0
spd=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Player)){
    t+=1
    if(t==20 or t==31 or t==42 or t==53 or t==64 or t==75 or t==86 or t==108 or t==119 or t==130 or t==152 or t==174 or t==196 or t==207 or t==218 or t==229 or t==240 or t==251){
        repeat(20){
            c=instance_create(x,y,CherryNoKill)
            c.vspeed=random_range(-3,-12)
            c.hspeed=random_range(-10,10)
            c.gravity=0.4
        }
    }
    if(t>=260){
        spd+=0.5
        repeat(20){
            c=instance_create(x,y,SpikeThatDestroysItselfWhenItGoesOutOfTheRoomWhyAmINamingItThisItsWayTooFuckingLongThisSucksBruh)
            c.speed=spd
            c.direction=random_range(225,315)
            c.image_angle=c.direction
            c.sprite_index=sprBoshySpikeCentered
        }
    }
}

if(!instance_exists(Player)){
    if(t>=260)
        DieMonster.visible=true
    image_speed=0
    t=0
}

// im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im NOT a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder im a good coder
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
if(keyboard_check_pressed(vk_space)){
    draw_set_color(c_white)
    draw_text(32,32,t)
}
