#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;
uniform sampler2D gnormal;
uniform sampler2D gdepth;

const int RGBA16 = 1;
const int gcolorFormat - RGBA16;

/*DRAWBUFFERS:012*/

void main()
{
  vec3 finalComposite = texture2D(gcolor, texcoord.st).rgb;
  vec3 finalCompositeCompositeNormal = texture2D(gcolor, texcoord.st).rgb;
  vec3 finalCompositeDepth = texture2D(gcolor, texcoord.st).rgb;

  gl_FragData[0] = vec4(finalComposite, 1.0);
  gl_FragData[1] = vec4(finalCompositeNormal, 1.0);
  gl_FragData[2] = vec4(finalCompositeDepth, 1.0);

}
