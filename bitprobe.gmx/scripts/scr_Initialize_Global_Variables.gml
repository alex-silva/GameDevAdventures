/* cores */
global.cor_White = 0;
global.cor_Red = 1;
global.cor_Green = 2;
global.cor_Blue = 3;
/* cores */

/* keys */
global.key_Left = vk_left;
global.key_Right = vk_right;
global.key_Jump = vk_space;

global.key_1 = keyboard_check(ord("1"));
global.key_2 = keyboard_check(ord("2"));
global.key_3 = keyboard_check(ord("3"));

/* keys */

/* sprites de direção player*/
global.left = 0;
global.right = 1;
global.jump_Left = 2;
global.jump_Right = 3;
/* sprites de direção player*/

/* direção spike*/
global.spike_Left = 0;
global.spike_Right = 1;
global.spike_Down = 2;
global.spike_Up = 3;
/* direção spike*/

/* mapas */
scr_Sprite_Map();
scr_Sphere_Map();
scr_Cor_Level();
/* mapas */

/* tempos de alarme */
global.alarm_Player_Death = 15;
/* tempos de alarme */

/* room */
global.snap_x = 16;
global.snap_y = 16;
/* room */
