#version 120

varying vec4 texcoord;

void main()
{
  //float floatTest;
  //int intTest;
  //bool truefalse;
  //vec2 holds2numbers;
  //vec3 holds3numbers;
  //vec4 holds4numbers;

  gl_Position = ftransform();

  texcoord = gl_MultiTexCoord0;

}
