vec3 sinTriad(float inp){
    return vec3(sin(inp),sin(inp+radians(120.)),sin(inp+radians(240.)));
}
float gorb(vec2 center){
    vec2 uv = fragCoord / iResolution.xy;
    vec2 point = (uv - center) * vec2(iResolution.x/iResolution.y, 1.0);
    float bright = 2./(pow(length(point*(15.+7.*sin(3.*iTime/7.))),2.)+1.);
    return bright;
}
void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;
    vec2 center = vec2(0.5 + 0.2 * sin(iTime), cos(iTime)/8.+.5);
    fragColor = vec4(sin(uv+iTime)*gorb(center,fragCoord), gorb(center,fragCoord), 1.0);
}