#version 120

varying vec3 tintColor;
varying vec4 texcoord;

void main() {
  gl_Position = ftransform(texcoord);

  texcoord = gl_MultiTexCoord0;
  tintColor = gl_Color.rgb;
}
