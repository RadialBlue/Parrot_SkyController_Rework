$fn = 10;

// Uplink WiFi Transciever Module (DNUA-P01)
module uplink() {
    difference() {
        color("green") translate([0, 0, -1]) {
            cube([55, 30, 1]);
        }

        // Mounting Holes
        translate([4, 15, -2]) cylinder(3, 2, 2, false);
        translate([50, 24, -2]) cylinder(3, 2, 2, false);
    }

    // Sheilded Block
    union() translate([10, 0, 0]) {
        cube([23, 30, 2]);
        translate([23, 5, 0]) cube([10, 25, 2]);
        translate([33, 5, 0]) cube([3, 17, 2]);
    }

    // SMA Connectors
    color("yellow") translate([1, 1, 0]) cube([6, 6, 6]);
    color("yellow") translate([1, 23, 0]) cube([6, 6, 6]);
    
    // USB Connector
    translate([49, 8, 0]) cube([6, 11,  2]);
}

// MainBoard PCB (NAP_MB_HW03)
module nap_mb() {
    color("green") translate([0, 0, -1]) {
        difference() {
            union() {
                cube([113, 83, 1]);
                translate([11, 83, 0]) cube([90, 10, 1]);
            }

            // Mounting Holes
            translate([30, 15, -1]) cylinder(3, 2, 2, false);
            translate([82, 15, -1]) cylinder(3, 2, 2, false);
            translate([4, 61, -1]) cylinder(3, 2, 2, false);
            translate([109, 61, -1]) cylinder(3, 2, 2, false);
            translate([26, 88, -1]) cylinder(3, 2, 2, false);
            translate([87, 88, -1]) cylinder(3, 2, 2, false);

            // Big Block Mounting Holes
            translate([19, 23, -1]) cylinder(3, 2, 2, false);
            translate([19, 63, -1]) cylinder(3, 2, 2, false);
            translate([93, 23, -1]) cylinder(3, 2, 2, false);
            translate([93, 63, -1]) cylinder(3, 2, 2, false);
        }
    }

    // Big Block
    translate([15, 20, 0]) difference() {
        cube([80, 46, 14]);
        translate([-1, 5, 0]) cube([7, 35, 15]);
    }

    // Connectors
    color("white") {
        translate([5, 7, 0]) cube([18, 5, 2]);
        translate([90, 7, 0]) cube([18, 5, 2]);
        translate([65, 78, 0]) cube([10, 5, 2]);
        translate([73, 2, 0]) cube([6, 5, 6]);
    }


    // Ports & Switches
    color([0.5, 0.5, 0.5]) {
        // HDMI
        translate([-1, 66, 0]) cube([12, 15, 6]);

        // USB Host
        translate([-1, 43, 0]) cube([14, 13, 7]);

        // Micro USB
        translate([-1, 31, 0]) cube([6, 8, 3]);

        // Power Switch
        translate([99, 64, 0]) {
            union() {
                cube([7, 14, 9]);
                translate([7, 7, 4]) cube([7, 3, 3]);
            }
        }

        // Power LED
        translate([102, 50, 0]) {
            cube([7, 4, 7]);
            translate([7, 2, 4]) sphere(r = 2);
        }
    }
}
