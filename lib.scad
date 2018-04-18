
//NutHole(m=6,l=0);
//Piller3(x=5,y=5,z=10,sw=true);
//Piller4(x=10,y=5,z=20,fn=12);
//Piller4X(x=10,y=5,z=20,fn=72);

module Piller3( //三角柱
	z=10,
	x=10,
	y=10,
	sw=false //横向き
){
	if(sw){
		translate([-x/2,-z/2,-y/2])
			polyhedron(points=[
						 [0,0,y],           // 0    front top corner
						 [0,0,0],[x,0,0],   // 1, 2 front left & right bottom corners
						 [0,z,y],           // 3    back top corner
						 [0,z,0],[x,z,0]    // 4, 5 back left & right bottom corners
			], faces=[ // points for all faces must be ordered clockwise when looking in
						 [0,2,1],    // top face
						 [3,4,5],    // base face
						 [0,1,4,3],  // h face
						 [1,2,5,4],  // w face
						 [0,3,5,2],  // hypotenuse face
			]);
	}else{
		rotate([90,0,0])
		translate([-x/2,-z/2,-y/2])
			polyhedron(points=[
						 [0,0,y],           // 0    front top corner
						 [0,0,0],[x,0,0],   // 1, 2 front left & right bottom corners
						 [0,z,y],           // 3    back top corner
						 [0,z,0],[x,z,0]    // 4, 5 back left & right bottom corners
			], faces=[ // points for all faces must be ordered clockwise when looking in
						 [0,2,1],    // top face
						 [3,4,5],    // base face
						 [0,1,4,3],  // h face
						 [1,2,5,4],  // w face
						 [0,3,5,2],  // hypotenuse face
			]);
	}
}

module Piller4(
	x=10,
	y=10,
	z=10,
	fn=12
){
	d=10;
	a=1.2;
	resize([x,y,z])
		intersection(){
			resize([d*a,d*a,d])
				cylinder(d,d1=d,d2=d,$fn=fn,center=true);
			cube([d,d,d],center=true);
		}
}

module Piller4X(
	x=10,
	y=10,
	z=10,
	fn=36
){
	d=10;
	resize([x,y,z]){
		cube([d,d,d],center=true);
		translate([d/2,0,0])
			cylinder(d,d1=d,d2=d,$fn=fn,center=true);
		translate([-d/2,0,0])
			cylinder(d,d1=d,d2=d,$fn=fn,center=true);
	}
}

module NutHole(
	m=6,
	l=0
){
	d=(m==2)?4.6:
		(m==2.5)?5.8:
		(m==3)?6.4:
		(m==4)?8.1:
		(m==5)?9.2:
		(m==6)?11.2://12:
		(m==8)?15:
		(m==10)?20:
		(m==12)?22:
		(m==14)?25:
		(m==16)?28:
		(m==18)?31:
		(m==20)?35:
		(m==22)?37:
		(m==24)?42:
		(m==27)?47:
		(m==30)?53:
		(m==33)?58:
		(m==36)?64:
		(m==39)?69:
		(m==42)?75:
		(m==45)?81:
		(m==48)?87:
		(m==52)?92:
		(m==56)?98:
		(m==60)?104:
		(m==64)?110:
		(m==68)?115:12;
		
	h=(m==2)?1.6:
		(m==2.5)?2:
		(m==3)?2.4:
		(m==4)?3.2:
		(m==5)?4:
		(m==6)?5:
		(m==8)?6.5:
		(m==10)?8:
		(m==12)?10:
		(m==14)?11:
		(m==16)?13:
		(m==18)?15:
		(m==20)?16:
		(m==22)?18:
		(m==24)?19:
		(m==27)?22:
		(m==30)?24:
		(m==33)?26:
		(m==36)?29:
		(m==39)?31:
		(m==42)?34:
		(m==45)?36:
		(m==48)?38:
		(m==52)?42:
		(m==56)?45:
		(m==60)?48:
		(m==64)?51:
		(m==68)?54:5;
		
	l=(l<h)?h:l;
	
	cylinder(h=l,d1=d,d2=d,$fn=6,center=true);
}
