return shader_pixel_create_base64("
    eJxFjs1qwlAQhb8bK40gZNdVoRfctJvQpLjIon8RwYWCf9BlsO2tFZRIYsGlj5Ct
    u+AT5GV8Aze+RG+5seAMA+c7wxlGWFr/6gat8Wt4DbwBwtJaAIYR0AfugUqJFi/G
    B6LpIgonqRqr9eonUVxQR5R9qmUa+dE7vdlHEqfx10reDu9kpzvqytH35FMlshUv
    lrO5SmTg+oEbNH33wfM8BlAFJ5/Xtk+79tXzfn18NPduwAI2UCnO2sn+dYbt5GH5
    prOBQ4F9yKtnNpPZJV8anRtPmKx92msNfxCoOAE=
")

/*
    varying vec2 v_vTexcoord;
    varying vec4 v_vColour;

    void main()
    {
        vec4 source = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
        float brightness = dot( vec3( 0.2989, 0.5870, 0.1140 ), source.rgb );
        gl_FragColor = vec4( vec3( brightness ), source.a );
    }
*/
