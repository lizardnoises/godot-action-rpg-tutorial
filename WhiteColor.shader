shader_type canvas_item;

uniform bool active = false;

void fragment() {
	vec4 color = texture(TEXTURE, UV);
	vec4 white = vec4(1.0, 1.0, 1.0, color.a);
	if (active == true) {
		color = white;
	}
	COLOR = color;
}