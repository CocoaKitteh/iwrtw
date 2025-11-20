///event_game_start()

// The main initialization script.
// Called from the World object.

global.psys=part_system_create()
part_system_depth(global.psys,-100)

global.ptyp=part_type_create()
part_type_shape(global.ptyp,pt_shape_flare)
part_type_color1(global.ptyp,13369368)
part_type_alpha2(global.ptyp,0.5,0)
part_type_life(global.ptyp,20,20)
part_type_size(global.ptyp,1.25,1.5,0,0)
part_type_speed(global.ptyp,0.04,0.08,0.01,0)
part_type_direction(global.ptyp,308.68,499.45,0,0)
part_type_orientation(global.ptyp,360,0,0,0,false)
part_type_gravity(global.ptyp,0,270)
part_type_blend(global.ptyp,true)

var _object;

engine_settings();

directory_create(working_directory + "\" + global.save_folder);

save_init();
config_init();
input_init();
sound_init();
camera_init();
trigger_init();
render_init();

global.grav = 1;
global.close_button_pressed = false;

global.debug_god_mode = false;
global.debug_infinite_jump = false;
global.debug_show_mask = false;
global.debug_overlay = 0;

global.paused = false;

unmuted_music_volume = config_get("music_volume");

set_room_views();

if global.debug {
    live_roomeditor_start();
    live_roomeditor_add_obj_exclusion(PlayerStart);
}

if !show_volume_check {
    room_goto_next();
}
else {
    instance_create(0, 0, VolumeCheck);
}
