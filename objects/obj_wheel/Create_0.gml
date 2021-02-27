/*
---- Wheel of Fortune ----
This engine allow you to use in whatever game what you want.
The first steps to edit this engine are in Guide.pdf in included files.
Thank you for your purchase. Do not forget to evaluate this project.
*/

pieces = 24; //Number of pieces on the wheel ...I won't be needing this.
negative_force = 0.1; //Force to stop the wheel
size = 360 / pieces; //Size of the pieces ...I definitely won't be needing this.
count = 3 * room_speed; //Time in seconds for click in wheel before she initialize stopping ...There won't be any of this shit
rotated = 0; //If count reaches 0 ...I think this is a variable to determine if the wheel is spinning or not? Has been spun? idk.
rotate_spd = 0; //Speed of the rotation ...This one's important.
stopped = 0; //If the wheel stops ...might be important?

/*value[piece, 0] = value of piece*/
value[0, 0] = 500; //First Value in wheel
value[1, 0] = 900;
value[2, 0] = 700;
value[3, 0] = 300;
value[4, 0] = 800;
value[5, 0] = 550;
value[6, 0] = 400;
value[7, 0] = 500;
value[8, 0] = 600;
value[9, 0] = 350;
value[10, 0] = 500;
value[11, 0] = 900;
value[12, 0] = 0;
value[13, 0] = 650;
value[14, 0] = 0;
value[15, 0] = 700;
value[16, 0] = 0;
value[17, 0] = 800;
value[18, 0] = 500;
value[19, 0] = 450;
value[20, 0] = 500;
value[21, 0] = 300;
value[22, 0] = 0;
value[23, 0] = 1000; //Last value in wheel

/*DO NOT CHANGE*/
/*value[piece, 1] = Minimum angle of the piece*/
/*value[piece, 2] = Maximum angle of the piece*/

//Ok, so even though I won't be using this PRECISELY, I'm sure I can modify this loop for my purposes.
//Just as a personal reminder to myself, it's kinda like...
//(Slice_Weight[i]/Wheel_Weight) * 360 = slice size
//So if the wheel's weight is 100, and one slice has a weight of 25, the size is 90. Can store this in
//an array by adding a third value, I guess. So it'd be number in sequence, slice weight, whose seed (string)
for(i = 0; i < pieces; i++)
{
    if(i == 0)
    {
        value[i, 1] = 0;
        value[i, 2] = size;
    }
    else
    {
        value[i, 1] = size * i + 1;
        value[i, 2] = size * (i + 1);
    }
}

min_value = 1; //Minimum value to add in wheel rotation.
max_value = 5; //Maximum value to add in wheel rotation.