//translate([-60.5, 84.5, 5]){
//    color(([0,125,100,200]/255)){
//    import("cabletester.stl", convexity=1);
//    }
//}

module screw_hole(){
    translate([0, 0, -0.01]){
        cylinder(1.7, 3, 1.6, false, $fn=360);
        translate([0, 0, 1]){
            cylinder(12, 1.8,1.8, false, $fn=360);
        }
    }
    translate([0, 0, -2.4]){
    cylinder(2.4, 3, 3, false, $fn=360);
    }
}

module all_screw_holes(){
    translate([4, 4, 0.9]){
        translate([0, 0, 0]){
        screw_hole();
        }
        translate([124.5, 0, 0]){
        screw_hole();
        }
        translate([0, 42.5, 0]){
        screw_hole();
        }
        translate([124.5, 42.5, 0]){
        screw_hole();
        }
    }
}
module frame(){
    translate([-1.5, -1.5, -0.5]){
        cube([1, 52.5, 8]);
    }
    translate([133.5, -1.5, -0.5]){
        cube([1, 52.5, 8]);
    }
    translate([-1.5, 51, -0.5]){
        cube([136, 1, 8]);
    }
    translate([-1.5, -1.5, -0.5]){
        cube([59.5, 1, 8]);
    }
    translate([88, -1.5, -0.5]){
        cube([46.5, 1, 8]);
    }
}

radius = 4;
module platte(){
    translate([-0.5, -0.5, -0.5]){
        cube([134, 51.5, 1.5]);
    }
    translate([4, 4, 1]){
        translate([0, 0, 0]){
        
        cylinder(5, radius, radius, false, $fn=360);
        }
        translate([124.5, 0, 0]){
        cylinder(5, radius, radius, false, $fn=360);
        }
        translate([0, 42.5, 0]){
        cylinder(5, radius, radius, false, $fn=360);
        }
        translate([124.5, 42.5, 0]){
        cylinder(5, radius, radius, false, $fn=360);
        }
        translate([77, 42.5, 0]){
        cylinder(5, radius, radius, false, $fn=360);
        }
        translate([62.25, 0, 0]){
        cylinder(5, radius, radius, false, $fn=360);
        }
    }
    translate([57, -15, -0.5]){
        cube([32, 17, 1.5]);
        cube([1, 13, 12]);
        cube([32, 1, 12]);
        translate([31, 0, 0]){
            cube([1, 13, 12]);
            translate([0, 12, 0]){
                cube([1, 2.5, 8]);
            }
        }
        translate([0, 12, 0]){
            cube([1, 2.5, 8]);
        }
    }
}


difference(){
    platte();
    all_screw_holes();
}
frame();
