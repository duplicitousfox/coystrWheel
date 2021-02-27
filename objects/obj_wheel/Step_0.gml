image_angle += rotate_spd; //Add a speed to wheel

if rotated == 1 //If the time of wheel reaches 0
{
    if rotate_spd > negative_force //If the rotate_speed are > 0.1
    {
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
        if stopped == 0
        {
        alarm[1] = 1;
        stopped = 1 //The wheel was stopped
        }        
    }
}

if image_angle>359 //Prevents image angle from going higher than 359
{
image_angle = 0;
}

