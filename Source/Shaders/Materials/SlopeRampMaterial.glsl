uniform sampler2D image;

czm_material czm_getMaterial(czm_materialInput materialInput)
{
    czm_material material = czm_getDefaultMaterial(materialInput);
    vec4 rampColor = texture2D(image, vec2(materialInput.slope, 0.5));
    material.diffuse = rampColor.rgb;
    material.alpha = rampColor.a;
    return material;
}
