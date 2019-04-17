vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

global.dx = view_wport[0];				//screen width
global.dy = view_hport[0];				//screen height

//HEALTH MAINTENANCE
if (global.playerHealth <= 0) global.playerHealth = 0;

x = vx;
y = vy;