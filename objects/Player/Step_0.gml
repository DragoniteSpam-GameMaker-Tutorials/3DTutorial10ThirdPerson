/// @description Insert description here

look_dir -= (window_mouse_get_x() - window_get_width() / 2) / 10;
look_pitch -= (window_mouse_get_y() - window_get_height() / 2) / 10;
look_pitch = clamp(look_pitch, -80, -10);

if (mouse_wheel_up()) {
    look_dist -= 4;
}
if (mouse_wheel_down()) {
    look_dist += 4;
}

look_dist = clamp(look_dist, 64, 400);

window_mouse_set(window_get_width() / 2, window_get_height() / 2);

if (keyboard_check_direct(vk_escape)) {
    game_end();
}

var move_speed = 4;

if (keyboard_check(ord("A"))) {
    x -= move_speed;
}

if (keyboard_check(ord("D"))) {
    x += move_speed;
}

if (keyboard_check(ord("W"))) {
    y -= move_speed;
}

if (keyboard_check(ord("S"))) {
    y += move_speed;
}