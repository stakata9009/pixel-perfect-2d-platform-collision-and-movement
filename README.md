# pixel-perfect-2d-platform-collision-and-movement

This is a fully functional script for getting user input, calculating and applying movement. Collision checks are pixel perfect, allowing the object to move right next to the walls without clipping.

It has a double jump function.

Some of the variables are in the create event:
hspd = 0;
vspd = 0;
grav = 0.4;
walkspd = 6;
jumps = 0;
jumpsmax = 2;

This script can be easily modified for a 2d top-down game by removing gravity, jumping and adding a couple of new inputs for up and down. The collision checks and movement for up and down are almost identical to left and right. Just have to swap x for y.
