// jar.scad

module jar_body(JAR_h, JAR_r, WALL=2) {
    difference() {
        cylinder(h = JAR_h, r = JAR_r);

        translate([0,0,WALL])
            cylinder(h = JAR_h, r = JAR_r - WALL);
    }
}

module jar_lid(JAR_h, JAR_r, LID_h=8, LID_extra=2) {
    translate([0,0,JAR_h])
        cylinder(h = LID_h, r = JAR_r + LID_extra);
}

module wall(WALL_w, WALL_l, WALL_z) {
    cube([WALL_w, WALL_l, WALL_z]);
}