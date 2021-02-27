/// @description Insert description here
// You can write your code in this editor
//buttons

angle += rotate_spd;

if is_spinning == 1 {
	if rotate_spd > negative_force {
		if rotate_spd > 200 {
		rotate_spd -= negative_force*40;
		}
		if rotate_spd > 100 {
		rotate_spd -= negative_force*20;
		}
        if rotate_spd>50
        {
        rotate_spd -= negative_force*10; //Decrease faster
        }
        else
        if rotate_spd>25
        {
        rotate_spd -= negative_force*5; //Decrease median
        }
        else
        if rotate_spd>10
        {
        rotate_spd -= negative_force; //Decrease slowly
        }
        else
        if rotate_spd>0
        {
        rotate_spd -= negative_force/2; //Will stop
        }
    }
    else //If the rotate_speed reaches 0
    {
    rotate_spd = 0; //prevent the rotate_speed stay in negative
    is_spinning = 0;        
    }
}
	

if angle >= 360 { angle -= 360 };
if angle < 0 { angle += 360 };
