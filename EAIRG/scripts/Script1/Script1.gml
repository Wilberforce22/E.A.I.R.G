function scr_shadow(arg0, arg1, arg2, arg3, arg4, arg5, arg6,arg7, arg8){
draw_set_colour(c_black)
draw_rectangle(arg0, arg1, arg2, arg3, false)
draw_set_colour(c_white)
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);
draw_set_alpha(1);
draw_rectangle(arg0, arg1, arg2, arg3, false)
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_circle_colour(arg4,arg5,arg6,arg7,arg8,false)
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
}