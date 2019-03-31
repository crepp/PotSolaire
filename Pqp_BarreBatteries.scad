// CREPP 2019
// GPL V3.0
// www.crepp.org - yvoz.lg@gmail.com

// include <Pqp_BoiteCadre.scad>;
ty = (143+137)/2; // distance entre trous de plaque

include <Hexa.scad>;

ep = 0.3*7; // 2.1
tz = 7;

ix = 2;
iy = 5;

$fn = 4*4;

difference(){
    union(){
        translate([ep+1.5,0,0]) cylinder(r=1.5+ep, h=tz);
        translate([ep+1.5,ty,0]) cylinder(r=1.5+ep, h=tz);
    }
    translate([ep+1.5,0,0]) cylinder(r=1.7, h=tz+2);
    translate([ep+1.5,ty,0]) cylinder(r=1.7, h=tz+2);
}

cube([ep,ty,tz]);

my = 20;
translate([0,my,0]) cube([ep,ty-my*2,tz*2]);

module rizlan() difference(){
    hull(){
        translate([ep+ix/2,0,0]) cylinder(r=ix/2+ep, h=tz*2);
        translate([ep+ix/2,iy,0]) cylinder(r=ix/2+ep, h=tz*2);
    }
    hull(){
        translate([ep+ix/2,0,0]) cylinder(r=ix/2, h=tz*2+2);
        translate([ep+ix/2,iy,0]) cylinder(r=ix/2, h=tz*2+2);
    }
}

translate([0,my,0]) rizlan();
translate([0,ty-my-iy,0]) rizlan();

