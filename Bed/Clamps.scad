gSize=[20,30,5];
gDetail=300;

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

// Drill hole.
		translate([0,-gSize.y/2+8,0])
// Scale it on the y to to make it "slideable" for a tight fit on the glass
		scale([1,1.25,1])
#		cylinder(r=3.2,h=40, center=true, $fn=gDetail);

// Tear out a chunk for the plate to sit on.
		translate([0,7.50,1])
		# cube([50, gSize.y-15,3], center=true);
	}
}


Clamp();