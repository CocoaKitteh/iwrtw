#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity_direction = 270;
gravity = 0.4;
image_angle=irandom(360)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// Handle vertical collisions
// Check collision below
if (place_meeting(x, y + 1, Block))
{
    if (vspeed > 2) {
        vspeed *= -0.5; // bounce up
    } else if (vspeed > 0) {
        vspeed = 0;     // stop
        gravity = 0;    // stick on top
    }
}
// Check collision above
else if (place_meeting(x, y - 1, Block))
{
    if (vspeed < 0) {
        vspeed *= -2;   // bounce downward
    }
}

/// Handle horizontal collisions
// Collision to the right
if (place_meeting(x + 1, y, Block) && hspeed > 0)
{
    hspeed *= -0.5; // bounce left
}
// Collision to the left
else if (place_meeting(x - 1, y, Block) && hspeed < 0)
{
    hspeed *= -0.5; // bounce right
}

// Ground check (standing on top of a block)
grounded = place_meeting(x, y + 1, Block);

if (grounded)
{
    if (hspeed > 2)      hspeed -= 0.2;
    else if (hspeed > 0) hspeed = 0;

    if (hspeed < -2)      hspeed += 0.2;
    else if (hspeed < 0)  hspeed = 0;
}
