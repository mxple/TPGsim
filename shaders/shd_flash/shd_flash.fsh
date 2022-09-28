
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec3 COLOR = vec3(.6);
const float OUTLINE_WIDTH = .333;

const float QUALITY = 8.;

uniform vec2 texel;

void main()
{
    vec4 col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    if (col.a != 0.0) {
        col.rgb += COLOR;
	}
	
    gl_FragColor = col;
}