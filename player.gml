// Key checks
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_jump_held = keyboard_check(vk_up);
key_duck = keyboard_check(vk_down);

// Move Input and speed calculation
var move = key_right - key_left;

hspd = move * walkspd;
vspd = vspd + grav;

// Jump
if place_meeting(x, y+1, obj_wall) {
    jumps = jumpsmax;
}
if key_jump and jumps > 0 {
	jumps -= 1;
	vspd = -7;
}


// Horizontal Collision and Movement
if place_meeting(x+hspd, y, obj_wall) {
    while !place_meeting(x+sign(hspd), y, obj_wall) {
        x = x + sign(hspd);
    }
    hspd = 0;
}
x = x + hspd;

// Vertical Collision and Movement
if place_meeting(x, y+vspd, obj_wall) {
	while !place_meeting(x, y+sign(vspd), obj_wall) {
        y = y + sign(vspd);
    }
    vspd = 0;
}
y = y + vspd;
if vspd < 0 and !key_jump_held {
	vspd = max(vspd, -7/4)
}
