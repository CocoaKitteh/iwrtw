#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pemi=part_emitter_create(global.psys)
part_emitter_region(global.psys,pemi,x+16,x+16,y+16,y+16,ps_shape_ellipse,ps_distr_linear)
part_emitter_stream(global.psys,pemi,global.ptyp,3)
hue=0
image_blend=make_color_hsv(180,255,255)

event_inherited()
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
part_emitter_destroy(global.psys,pemi)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hue+=1
image_blend=make_color_hsv(cos(hue/24)*16+180,255,255)
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
part_emitter_destroy(global.psys,pemi)
instance_destroy()
