// Dimensions
cube_W = 10;
cube_L = 10;
cube_H = 10;

hat_W = cube_W * 1.5;
hat_L = cube_L * 1.5;
hat_H = cube_H / 2;
hat_offset = cube_H / 2;

// base cube
color("red") {
    cube([cube_W, cube_L, cube_H], center = true);
}

// top cube (hat)
translate([0, 0, hat_offset]) {
    color("blue") {
        cube([hat_W, hat_L, hat_H], center = true);
    }
}