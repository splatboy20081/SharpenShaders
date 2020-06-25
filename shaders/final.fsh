#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;


vec3 convertToHDR(in vec3 color) {

  vec3 HDRImage;

  vec3 overexposed = color * 1.9f;
  vec3 underexposed = color / 1.6f;

  HDRImage = mix(underexposed, overexposed, color);

  return HDRImage;
}

void main()
{
  vec3 color = texture2D(gcolor, texcoord.st).rgb;

  color = convertToHDR(color);

  //color.r *= 1.5f;
  //color.b *= 2;
  //color.g *= 2;

  gl_FragColor = vec4(color.rgb, 1.0f);
}
