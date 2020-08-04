switch(type){
case eDebEffectType.Line:
	draw_line(x1, y1, x2, y2);
break
case eDebEffectType.Circle:
	draw_circle(x1, y1, size, outline);
break
default:
	instance_destroy();
break
}

draw_set_color(c_white);


enum eDebEffectType{
	Line,
	Circle,
	
}