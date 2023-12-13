shader_type canvas_item;

void fragment() {
    // Get the screen UV coordinates
    vec2 screen_uv = SCREEN_UV;

    // Check if the fragment position is outside the player's viewport
    if (screen_uv.x < 0.0 || screen_uv.x > 1.0 || screen_uv.y < 0.0 || screen_uv.y > 1.0) {
        // Set the color to black for areas outside the viewport
        COLOR = vec4(0.0, 0.0, 0.0, 1.0);
    } else {
        // Keep the original color for areas inside the viewport
        COLOR = texture(TEXTURE, screen_uv);
    }
}
