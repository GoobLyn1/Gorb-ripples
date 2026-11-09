vec3 sinTriad(float inp){
    return vec3(sin(inp),sin(inp+radians(120.)),sin(inp+radians(240.)));
}
void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;
    fragColor = vec4(sin(uv+iTime), 0.75, 1.0);
}