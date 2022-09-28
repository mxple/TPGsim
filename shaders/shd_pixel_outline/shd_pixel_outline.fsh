
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec3 OUTLINE_COLOR = vec3(0.);
const float OUTLINE_WIDTH = .333;

const float QUALITY = 8.;

uniform vec2 texel;

void main()
{
    
    vec4 col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    if (col.a == 0.0) {
        col.rgb = OUTLINE_COLOR;
        
		for (float i = -1.; i < 2.0; i++) { 
			for (float j = -1.; j < 2.0; j++) { 
				vec2 check_pos = OUTLINE_WIDTH * texel * vec2(i, j);
				col.a += texture2D(gm_BaseTexture, v_vTexcoord + check_pos).a;
			}
		}
	}
	
	//if (col.a == 0.0) {
		
	//	col.rgb = vec3(0.,0.,0.);
	//	for (float i = -1.; i < 2.0; i++) { 
	//		for (float j = -1.; j < 2.0; j++) {
	//	        for( float d=1.0/QUALITY;d<=1.0;d+=1.0/QUALITY ) {
	//				vec2 check_pos = OUTLINE_WIDTH * texel * vec2(i, j);
	//	            col.a += texture2D( gm_BaseTexture, v_vTexcoord+vec2(i,j)*.01*d).a;
	//	        }
	//		}
	//    }
	//	col.a /= 8.*QUALITY + 1.;
	//}
    
    gl_FragColor = col;
}