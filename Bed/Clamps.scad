// Work in progress towards clips to hold the 'bottom' in.  Debating making angle brackets to mount them
// since I forgot to put nuts in the bottom of my extrusions.  Darnit.

gSize=[40,60,5];
gDetail=200;


translate([-500,-30,0])
rotate([0,90,0])
% import("C:\\Users\\Eddie\\Downloads\\TL-400-0101-001CLR_-_OpenBeam_1515_Extrusion_Clear_Anodized.stl");

module Clamp()
{
difference()
{
	scale(gSize)
	union()
	{
		cylinder(r=1/2, $fn=gDetail, center=true);
		translate([0,-.25,0])
		cube([1,.5,1], center=true);
	}
	translate([0,-gSize.y/2+8,0])
	cylinder(r=3,h=40, center=true, $fn=gDetail);
}
}


Clamp();