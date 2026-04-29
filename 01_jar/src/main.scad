include <../lib/lib_jar.scad>;

$fa = 0.2;

// =====================
// PARAMETRY SŁOIKA
// =====================
JAR_h = 190;
JAR_obw = 380;
JAR_r = JAR_obw / (2 * PI);

// =====================
// PARAMETRY ŚCIAN
// =====================
clearance = 0.5;          // luz (ważne żeby nie nachodziło)
WALL_l = 10;              // grubość ściany
WALL_z = 100;             // wysokość

// długość ścian = średnica + luz
WALL_w = 2 * JAR_r + clearance;

// offset do środka ściany
offset = JAR_r + clearance + WALL_l/2;


// =====================
// MODUŁ CENTROWANEJ ŚCIANY
// =====================
module wall_centered(w, l, z) {
    translate([-w/2, -l/2, 0])
        wall(w, l, z);
}


// =====================
// SŁOIK (środek układu)
// =====================
color("lightblue")
jar_body(JAR_h, JAR_r);

color("gray")
jar_lid(JAR_h, JAR_r);


// =====================
// ŚCIANY
// =====================

// PRZÓD
translate([0, offset, 0])
color("red")
wall_centered(WALL_w, WALL_l, WALL_z);

// TYŁ
translate([0, -offset, 0])
color("red")
wall_centered(WALL_w, WALL_l, WALL_z);

// LEWO
translate([-offset, 0, 0])
rotate([0,0,90])
color("red")
wall_centered(WALL_w, WALL_l, WALL_z);

// PRAWO
translate([offset, 0, 0])
rotate([0,0,90])
color("red")
wall_centered(WALL_w, WALL_l, WALL_z);