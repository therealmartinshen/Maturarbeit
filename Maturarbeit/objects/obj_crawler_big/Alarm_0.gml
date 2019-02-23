xx = -xx;
image_xscale = -sign(xx);

alarm_set(0, tilemove * (32 / walkspd) + alarm_get(0));