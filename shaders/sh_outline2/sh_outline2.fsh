//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 end_pixel = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	if(texture2D(gm_BaseTexture, v_vTexcoord).a <= 0.0){
		end_pixel = vec4(1.0);
	}
    gl_FragColor = end_pixel;
	
	
}
