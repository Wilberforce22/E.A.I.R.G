if shaderamnt > 0
{
shader_set(Shader1)
multiplier = shader_get_uniform(Shader1, "mult");
shader_set_uniform_f(multiplier,max(mult*shaderamnt,1))
}
draw_surface_stretched(application_surface,random_range(-shake_remain,shake_remain)-zoom,random_range(-shake_remain,shake_remain)-zoom,window_get_width()+(zoom*2),(window_get_height()+(zoom*2)))
if shaderamnt > 0
shader_reset()