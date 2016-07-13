///scr_move_state

//Call Movement Script
scr_get_input();

if (dash_key) {
    state = scr_dash_state;
    alarm[0] = room_speed / 6;
}

if (attack_key) {
    image_index = 0
    state = scr_attack_state;
}


//Get the Axis
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

//Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get the Length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

//Get the Hspd and Vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;


//Control the Sprite
image_speed = sign(len) * .2;

if (len == 0) image_index = 0;



switch ( face ) {
    case RIGHT: 
    sprite_index = spr_player_right;
    break;
    
    case LEFT:
    sprite_index = spr_player_left
    break;
    
    case UP:
    sprite_index = spr_player_up;
    break;
    
    case DOWN:
    sprite_index = spr_player_down;
    break;
    }
