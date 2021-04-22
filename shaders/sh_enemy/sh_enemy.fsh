//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 inTexel;
uniform vec4 outlineColor;

uniform float addValue;

//uniform float saturation;

/*vec3 hsv2rgb(vec3 c) {
	vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
	vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
	return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}
	
vec3 rgb2hsv(vec3 c)
{
	vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
	vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
	vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

	float d = q.x - min(q.w, q.y);
	float e = 1.0e-10;
	return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}*/

void main()
{
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	
	//彩度
	/*gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	vec3 col = rgb2hsv(gl_FragColor.rgb);
	col.g *= 1.0;
	gl_FragColor.rgb = hsv2rgb(col);*/
	
	//明度
	gl_FragColor.rgb += vec3(addValue);
	
	//outline
	vec4 newColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    
	vec2 pixelSize = inTexel * 1.0;
	
	if(texture2D(gm_BaseTexture, v_vTexcoord).a <= 0.0){
		float alpha = 0.0;
		
		alpha = max(alpha, texture2D( gm_BaseTexture, vec2(v_vTexcoord.x - pixelSize.x, v_vTexcoord.y)).a);
		alpha += max(alpha, texture2D( gm_BaseTexture, vec2(v_vTexcoord.x + pixelSize.x, v_vTexcoord.y)).a);
		alpha += max(alpha, texture2D( gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - pixelSize.y)).a);
		alpha += max(alpha, texture2D( gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + pixelSize.y)).a);
		
		if(alpha > 0.0){
			newColor = outlineColor;
		}
	}
	
	gl_FragColor += newColor;

	
	
	
	
	
	
	
	
	
}
