return shader_pixel_create_base64("
    eJxNk8Fr01AAh78kTZtu3R54EwR71EthCwrFheDmwUM96Oa5TNe4YmdnO2XikAde
    PewaEHwH8ZAd/Qf8AwIDT56lf4QnI+/tNb72ku/rj5TvkXh+Vf2teuzs3d++AXwE
    PL+qfEAzHpwBD4DAoM+e9sAB4NPA4xoT64Yvjobb+/PR3uj05M1sRIMOnvna34+n
    cy4uLjwCc6+lP54PN4fPeDR+PpvOp9lJ99aT292Hg91Bd/dw/2A06+5Mj47Hk9Gs
    2+9t9nv9O5u9eGNjg8cQglCXZZlkWZYG/EjgMNXeQ6i78fckz8fpOPuWxPFL432E
    +pznSVlO0svyU5Jlr4wPECpAJnCcTrIsyfPXxocI9bMcJHE8T/txnJTlifFNhPqS
    X0+y7G0aQgKnxrcQ6ldZbuX5u/Rrnm/F8XvjI4T6XQ62yvIs/VOW97Lsg/FthML8
    7//PTX20IEGc2+tzIqE8cx3IBgvVgIZHIGEhAQVPjfNrVyiojAus80B5dteoXaE8
    uwut80H5dtesXaF8u2tZF4AK7C6qXaECu2tbF4IK7W6ldoUK7W7Vuiaopt11aleo
    pt2tWdcC1bK79doVqmV3wroIVGR31K5QEZXahsBDSE+fVbQw7COk73CAkIHDDYQ+
    +5pDhAwdbiJk0+EWQrYcjhAycriNkG2HVxByxeFVhFx1uIOQHYfXEHLN4XWEXHdY
    IKRwGMTVsxEtlO/06+Yl617PYd3rsu51Wfe6rHtd1r0u616Xda/Lutdl3euy7nVZ
    97qse5e87NUcuv0szl1um/cCn+iKqwr+AaG/JPc=
")

/*
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
                Color += texture2D( gm_BaseTexture, v+(pos)*(1.0-v));
        }
        Color /= float(Quality);
        gl_FragColor =  Color *  v_vColour;
    }
*/
