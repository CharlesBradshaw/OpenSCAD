// This was a quick 'sketch' to see the fesability of creaing the gears of a
// transmission via code. It proved to be too dificult to make the teeth
// involute (rounded such that two gears' teeth only ever touch at one point)
// so I decied to go with SolidWorks, another CAD (computer assisted design)
// program


    //units in mm
    gear_height = 20;
    num_teeth = 10;
    tooth_height = 20;
    tooth_width = 8;
    gear_radius = 20;
    inner_radius = gear_radius-8;
    
    // Integrate into 3rd dimension with 15deg of rotation
    linear_extrude(height = gear_height, twist = 15, slices = 100) 
    { 
        
        
        difference()
        {
            //create teeth
            for(a = [ 0 : num_teeth])     
                rotate(360/num_teeth*a)
                    square([gear_radius*2+tooth_height,tooth_width],center = true);
            
            // remove center
            circle(inner_radius, center = true, $fn = 100);
        }
        
        // create ring around teeth
        difference()
        {
            //ring circle
            circle(gear_radius, center = true, $fn=100);
            
            // remove center
            circle(inner_radius, center = true, $fn = 100);
        }

     }

