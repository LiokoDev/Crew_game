///scr_enemy_find_pos
var dir = point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
image_xscale = sign(hspd);
phy_position_x += hspd;
phy_position_y += vspd;

