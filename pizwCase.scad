//*
difference(){
//case
color([0,1,0],.3)
translate([0,-1,-2.5]) cube([69,35,9.5]);

//pi
color([1,0,0],.3)
translate([0,0,-0.5])
cube([69,32.2,5.5]);
translate([0,0,1])
cube([69,35,1]);

//hdmi
translate([9,-2,1.7]) cube([12,12,2.9]);

//usb
translate([40  ,-2,1.6]) cube([8,12,2.3]);
translate([52.5,-2,1.6]) cube([8,12,2.3]);

//gpio
translate([55 ,20,-2]) cube([6 ,12.3,11.7]);
translate([9.4,26  ,-2]) cube([45.6,6.3,11.7]);
}
//*/

/*
//ref piBoard
translate([-0.5,-1.8,-12.9])
color([0,0,1],0.3)
import("/home/wato/Downloads/raspberrypizerov13.stl");
//*/