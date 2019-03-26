//change walking direction
xx = -xx;
//mirror waliking animation
image_xscale = -sign(xx);
//reset Alarm 0
alarm_set(0, tilemove * (tile / walkspd));