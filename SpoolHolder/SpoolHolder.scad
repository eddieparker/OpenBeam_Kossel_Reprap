
gDetail=200;

difference()
{
translate([0,0,118.25])
rotate([180,0,0])
import("Matterhacker_Spool_Holder.STL");

translate([0,0,-10])
# cube([100,1000,20], center=true);

translate([7.5,-27.5,0])
# cylinder(r=3,h=500,center=true, $fn=gDetail);

translate([47.5,-27.5,0])
# cylinder(r=3,h=500,center=true, $fn=gDetail);


}