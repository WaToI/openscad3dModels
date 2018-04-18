translate([-0.2,-.5,-3])
	cube([2.5,18,2]);
translate([1.27*18-2.3,-0.5,-3])
	cube([2.5,18,2]);
	
translate([1.27*18,-4,0])
rotate([0,0,180])
	Esp32Adapter();

translate([0,16+4,0])
	Esp32Adapter();

translate([-2,-4.6,0])
rotate([0,0,90])
	Esp32Adapter(n=20);
	
module Esp32Adapter(
	n=18,
	ix=0.45,
	iy=2,
	iz=4,
	p=1.27
){
	translate([n*p/2,-1.5,-iz/2])
		cube([n*p+ix,iy+2.5,2],center=true);
	for(i=[0:1:n]){
		translate([i*p,0,0])
			cube([ix,iy,iz],center=true);
	}
}
