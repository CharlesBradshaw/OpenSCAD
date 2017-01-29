//Created and printed this model as a christmas present for my brother

//main refers to base triangle
//sub referse to cap triangles
main_thickness = 10;
main_length = 90;
sub_thickness = 5;
sub_length = 40;
sub_warp = .9;
border = 5;


            // first triangle 'cap'
            translate([main_length-sub_length-border,0,main_thickness])
            {
                cylinder(sub_thickness,sub_length,sub_length*sub_warp, center = false, $fn = 3);
            }
            // second triangle 'cap'
            translate([
                        -(main_length-sub_length)/3-border,
                        2*(main_length-sub_length)/3+border,
                        main_thickness
                      ])
            {
                cylinder(sub_thickness,sub_length,sub_length*sub_warp, center = false, $fn = 3);
            }
            
            //third triangle 'cap'
            translate([
                        -(main_length-sub_length)/3-border,
                        -2*(main_length-sub_length)/3-border,
                        main_thickness
                      ])
            {
                cylinder(sub_thickness,sub_length,sub_length*sub_warp, center = false, $fn = 3);
            }
            
            //base triangle
            difference()
            {
                cylinder(main_thickness,main_length,main_length, center = false, $fn = 3);
                rotate(60)
                {
                    translate([0,0,-1])
                    {
                        cylinder(main_thickness+2,sub_length,sub_length, center = false, $fn = 3);  
                    }
                }
            }
  
