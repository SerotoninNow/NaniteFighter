//allow acceleration when hitting W -Sero
if (keyboard_check(ord("W")) && moveSpeed <= maxMoveSpeed){
moveSpeed++;
}
//allow decceleration when hitting S -Sero
if (keyboard_check(ord("S")) && moveSpeed > 0){
moveSpeed -= 2;
}
if(!keyboard_check(ord("W")) && !keyboard_check(ord("S")) && moveSpeed > 0) {
moveSpeed --;
}
//direction change -Sero
if (keyboard_check(ord("D"))) {
direction += 5;
}

if (keyboard_check(ord("A"))){
direction -= 5;
}
//there was a bug that allowed the move speed to be negative. This prevents that -Sero
if (moveSpeed < 0){
moveSpeed = 0;
}

image_angle = direction;
speed = moveSpeed;

//camera_set_view_pos(view_camera[0],x-683,y-384);