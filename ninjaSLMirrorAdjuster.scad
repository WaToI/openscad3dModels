include <lib.scad>

MirrorBase();

module MirrorBase(
	y=23,
	z=20,
	m=11,
	ix=45,
	fn=720
){
	difference(){
		union(){
			cube([ix,y,z],center=true);
			translate([ix/2,0,0])
				cylinder(z,d1=y,d2=y,$fn=fn,center=true);
			translate([-ix/2,0,0])
				cylinder(z,d1=y,d2=y,$fn=fn,center=true);
		}
		translate([ix/2+1,0,0])
			cylinder(z+1,d1=m,d2=m,center=true);
		translate([-ix/2-1,0,0])
			cylinder(z+1,d1=m,d2=m,center=true);
	}
}
