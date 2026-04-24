include <../lib/lib_jar.scad>;
$fa=0.2;

//small
//JAR_h = 175;
//JAR_obw = 315;
//big
JAR_h = 190;
JAR_obw = 380;

JAR_r = JAR_obw/(2*3.14);

color("lightblue")
jar_body(JAR_h, JAR_r);

color("gray")
jar_lid(JAR_h, JAR_r);