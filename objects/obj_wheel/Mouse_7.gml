if rotated = 0 //The time to click is not over yet
{
    if alarm[0] == -1
    {
    alarm[0]= count; //Starts the countdown
    }
    rotate_spd += irandom_range(min_value, max_value); //Add a diferent values to rotate_speed
}

