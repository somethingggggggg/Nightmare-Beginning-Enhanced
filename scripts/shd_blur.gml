return shader_pixel_create_base64("
    eJxdks9qFEEQxn/dPSuDBBr1KjgI/rss2QQPi7DqZg8K8aDZPS/BjLqQsGE3AREP
    BXmBeYQ+b17Cq8+Q65xlj3pJS/XMqthDw1ff11VfdfXgYryOXfbGL4d3gQsAF6MF
    NMbAV2CkdAotY+WBI8CSYbjNcctNP55Mh4fLclx+PjtflGRsYdLX6svZl5LLS4Oj
    2c06XU53p9u8mb1fzJfzD2fF43dPilf7B/vFwafDo3JR7M1PTmfH5aLod3f63f7T
    ne5ur9fjLXTAh7YMF7/uD4Dnyht8uPLfX1z5199aeaC8bfjBT3f9bJO33dRZ39oQ
    //AGv87/4++B7YCAqxTfBDH4hIGK3IcbCRvJoMVWMiahk0bpBGrJWIUhOIPXuCKv
    gwFr8WKoRTFkApPwML1Gvc4gg1xgpTtADHfSOeWi+rV61PxgmIQHYF3yjKL+Da7F
    tR4ZXuwfv1wMMfmZ1s+xJY5RyodRpT138OL4IdqzBac1MmrpUIvGf3uI4VHzK6V7
    6ZlG13utFCe9mcumj7pKcZ7mIpZJiBF+A2bzeLE=
")

/*
    varying vec2 v_vTexcoord;
    varying vec4 v_vColour;
    uniform vec3 size;//width,height,radius

    const int Quality = 8;
    const int Directions = 16;
    const float Pi = 6.28318530718;//pi * 2

    void main()
    {
        vec2 radius = size.z/size.xy;
        vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord);
        for( float d=0.0;d<Pi;d+=Pi/float(Directions) )
        {
            for( float i=1.0/float(Quality);i<=1.0;i+=1.0/float(Quality) )
            {
                    Color += texture2D( gm_BaseTexture, v_vTexcoord+vec2(cos(d),sin(d))*radius*i);
            }
        }
        Color /= float(Quality)*float(Directions)+1.0;
        gl_FragColor =  Color *  v_vColour;
    }
*/
