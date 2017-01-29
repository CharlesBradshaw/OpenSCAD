// This was a complex object created to learn openSCAD
// and to explore the 3D printers at VCU

outer_radius = 30;
inner_radius = 19;
thickness = 5;
num_edges = 8;
x = inner_radius;
y = 0;

difference()
{
    //create the base circle and remove the inside
    cylinder(thickness,outer_radius,outer_radius,center = true, $fn=360);
    cylinder(thickness+1,inner_radius,inner_radius,center = true, $fn = num_edges);
    
    
    for( i = [0:num_edges-1])
    {
        rotate([0,0,i*(360/num_edges)])
        {
            //create the lines on the top (1) and bottom (-1) of the file
            for(j = [1,-1])
            {
                // move lines from center to edge
                translate([x+4,y+12 ,2*j])
                {
                    rotate([0,0,((180-360/num_edges)/2)-180])
                    {
                        cube([29,2,thickness/3+1], center = true);
                    }
                }
            }
        }
    }
}

