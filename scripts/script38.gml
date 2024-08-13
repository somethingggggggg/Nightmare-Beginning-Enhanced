return shader_pixel_create_base64("
    eJxN07+rklEcx/HPeY6PPv78QlsQ5FiLoFIgeYa8DQ021LVZbl0twYuiN2hoONDa
    4CoEPUM05Ng/0B/wwIWm5vCPaOqJ7zmPh68uvr7yEd6KKsrzf3kHZ5PHozsAPgJQ
    UZ5HANhQwAcATwBoxwgTvgO4BBChBIVbWBa36Zur6ehiO5vM3l+/28xQQgPKPYv3
    16stDoeDgnafdbqvt9Pe9BWeLV5vVtvV/Lp978X99tPx+bh9/vbicrZpn62u1ovl
    bNMedHqDzuBBr9Pvdrt4DsQApTdZZjR+mof9H2Yx/2b4rkDp5/3e3GSfjIY1y/nc
    3SNQ+isbm0G/b77sb5sYcHcNSn9n2fDrfj/8k42Hf7PsEd9jUApYA/G4y+mABWhX
    vN4hoVS519qWcExjQCtoCxwtAOco+KWzDv7uXArOnePCqtiXg/2+Euz3SbDfVwtH
    xb4W7Pf1YL9vBPt9s7Au9q1gv6dgv0dwno5cP1nFPcnROQLZSFiDrBYugfi7C45B
    NhYug2xZuAKyFeEEZBPhKshWhWsgWxOug2xduAGyDeEmyDaFWyDbEiaQJWGA/O+X
    HNNI9HPzydyrhLlXmnuluVeae6W5V5p7pblXmnuluVeae6W5V5p7Tz71sv3vX/Tj
    uJOOAf/fSLzzHPgPGWD2gg==
")

/*
    varying vec2 in_TextureCoord;
    varying vec4 v_vColour;
    uniform vec2 pos;//x,y
    const int Quality = 16;

    void main()
    {
        vec4 Color;
        float v;
        for( float i=0.0;i<1.0;i+=1.0/float(Quality) )
        {
                v = 0.9+i*0.1;//convert "i" to the 0.9 to 1 range
                Color += texture2D( gm_BaseTexture, in_TextureCoord*v+(pos)*(1.0-v));
        }
        Color /= float(Quality);
        gl_FragColor =  Color *  v_vColour;
    }
*/
