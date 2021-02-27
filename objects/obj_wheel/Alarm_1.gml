image_angle = round(image_angle); //Round the image angle, prevent bugs
for(i = 0; i < pieces; i++)
{
    if(image_angle >= value[i, 1] && image_angle <= value[i, 2])
    {
        /*
        Here is the action when the wheel stop
        I.E.: points += value[i, 0];
        I.E.: player1.gold += value[i, 0];
        */
        show_message(value[i, 0]);
        i = pieces;
    }
}

