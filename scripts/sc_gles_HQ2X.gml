/*
    gles_4XBR
*/

return shader_pixel_create_base64("
    eJyFVsuKJEUUPZEZ+ahGTBiXJVhL3TR2i4veODot6KJdaJswC6HxUWLDSA89PSAi
    TBTzA/0JNduqzXyB8zP1Haac+8iM6saxioC8jzj3xo1zb2YohuGf4RCn33/x6H0A
    LwGEYhgKAJQRgL8AfAmgFLHAGfUAfgBQICLgAZ6Y7uJm+cfH2G4j3kGQ/6S/eX69
    PL/8c4ntdhtQCpbbnz67OL74Cd9c/nx99ezq15vFh999tPj67Pxscf7bj78srxen
    V78/vXyyvF6cHB6fHJ58enz4ydHREb4FKqBbK0p6CLw4BdJX1AfVPwTS30D6DMAb
    6gvRf/4G2e8DHgVIQPl6eu5u7fkWbbeu5blIEb09hxSBdQWUAWUCdq8jduv3gIJy
    wI72WNgzsFvRJ8jemACsC6AsEficCl1liSIBm1SgFzmqfeX2qPaV2yuxb1Jp9krs
    fSrNXpvd99dm9/2N2kf8Ru0jfmt2x2/N7vgzw49mnxl+NPuB7Xf7ge2n/ZHQqksV
    69Pu1pQrdKnO5AJdKjK5RpeaTC7RpTKTG3SpzeSILsVMbtGlg0yeoUszk1uJ1/Ku
    EjAXuUSr+WEu9xXRpgJDKjGsKpMjBlmPgWjyCujJP8Go0OqZDLMWjAmzkRjDqsaQ
    KpMbDLKIafKIqfegcelDzJn4TJjkJ/Fmlidl5TUE0+QRkzpithIH1Amucj7HJXf7
    MVeVN7IUV+S9XCE1JUc0V9aozeoREPUOLEZAmwI2EkNliSk67bfIZ1mMafIYsxox
    BlnqI/LeeTUvPS/9PNcWA/XpgdS+SQFYk2O8M72PRvZRZs21dpOOvlq7Vrlp52J9
    6VNa7azesnwW0FbbnakMWYxhMvN9BfSv8jujD/Xq1xjmlF+T6Vh77+2gfWr3H5h3
    cnzv94B+FfZ8evGh74QNicXzTjkwd62bY5GPGM9fCBaXYot8h+dRes25wH6kTD5U
    kyxLMWNqsZGlmCLf6x310RnlHHaZM6DI+tFkWcR0+37vMHflkvqOPTrm7rOhMtz/
    mx13ObLfozmPvec4b4Z7ZyKPZ8bjOuNxLZzl7N/JfHpsfq5jT+pM1/nk90Z5prNl
    jFWbfer3qX4my9rvu+mc/z1HJq5b3JX6KdeZr+ah+fq5XKfn1ZzJ9YBBauZnyLnO
    mMr1zejjsejrXOdzk9XH9nGts7qKT531A/flc4Q6fXdPWEH6Td6VgqVyv5cn39kB
    GHuSPo31LX0dm8+MX2bYvAPOTZ+rfH/cn6M5j/TuYsZh9k7M5mrMZqjz2OeqfduM
    8zhmPcRa5/2iOuams5d15BmrrGYVGuk9ytR7vV3n900s5aR/RzGnXnpPv5OE0+Os
    dZlL4zjnte5v61fuod/bZ8XE48JmGH2cx3aGkbPZWVN+1srmapX51aa729vkm+vy
    d1nM/KLotHbU652+a7p5ajAfdcqBuXzP6jka0017iUdOM27I9jKXKtsL86OPvx/I
    NXLfe3SaGxP3Oe+V+5vxe0z3aO/pO9f3OEfl3Sx94HkyPnO3b3NiFBqvt3nU2Xfg
    7lZsrcrDAPwL36SZkQ==
")

/*
    //
    // Simple passthrough fragment shader
    //
    varying vec2 v_vTexcoord;
    varying vec4 v_vColour;
    //varying vec2 v_vPixcoord; // isn't used?
    
    uniform vec2 textureSize;
    uniform sampler2D tex0;
    
    const vec3 dtt = vec3(65536.0, 255.0, 1.0);
    
    float reduce(vec3 c) { return dot(c, dtt); }
    
    vec4 effect() {
            vec2 ps = 1.0 / textureSize;
            vec2 dx = vec2(ps.x, 0.0);
            vec2 dy = vec2(0.0, ps.y);
    
            vec2 pixcoord = v_vTexcoord/ps;
            vec2 fp        = fract(pixcoord);
            vec2 d11 = v_vTexcoord - fp * ps;
    
            // Reading the texture2Ds
    
            vec3 A = texture2D(tex0, d11-dx-dy).xyz;
            vec3 B = texture2D(tex0, d11   -dy).xyz;
            vec3 C = texture2D(tex0, d11+dx-dy).xyz;
            vec3 D = texture2D(tex0, d11-dx   ).xyz;
            vec3 E = texture2D(tex0, d11      ).xyz;
            vec3 F = texture2D(tex0, d11+dx   ).xyz;
            vec3 G = texture2D(tex0, d11-dx+dy).xyz;
            vec3 H = texture2D(tex0, d11+dy   ).xyz;
            vec3 I = texture2D(tex0, d11+dx+dy).xyz;
    
            vec3 E0 = E;
            vec3 E1 = E;
            vec3 E2 = E;
            vec3 E3 = E;
            vec3 E4 = E;
            vec3 E5 = E;
            vec3 E6 = E;
            vec3 E7 = E;
            vec3 E8 = E;
            vec3 E9 = E;
            vec3 E10 = E;
            vec3 E11 = E;
            vec3 E12 = E;
            vec3 E13 = E;
            vec3 E14 = E;
            vec3 E15 = E;
    
            float a = reduce(A);
            float b = reduce(B);
            float c = reduce(C);
            float d = reduce(D);
            float e = reduce(E);
            float f = reduce(F);
            float g = reduce(G);
            float h = reduce(H);
            float i = reduce(I);
    
    
            if ((h == f)&&(h != e))
            {
                    if (
                    ((e == g) && ((i == h) || (e == d)))
                    ||
                    ((e == c) && ((i == h) || (e == b)))
                    )
                    {
                            E11 = mix(E11, F,  0.5);        
                            E14 = E11;
                            E15 = F;
                    }
            }
    
            if ((f == b)&&(f != e))
            {
                    if (
                    ((e == i) && ((f == c) || (e == h)))
                    ||
                    ((e == a) && ((f == c) || (e == d)))
                    )
                    {
                            E2 = mix(E2, B,  0.5);        
                            E7 = E2;
                            E3 = B;
                    }
            }
    
            if ((b == d)&&(b != e))
            {
                    if (
                    ((e == c) && ((b == a) || (e == f)))
                    ||
                    ((e == g) && ((b == a) || (e == h)))
                    )                        
                    {
                            E1 = mix(E1, D,  0.5);        
                            E4 = E1;
                            E0 = D;
                    }
            }
    
            if ((d == h)&&(d != e))
            {
                    if (
                    ((e == a) && ((d == g) || (e == b)))
                    ||
                    ((e == i) && ((d == g) || (e == f)))
                    )
                    {
                            E8 = mix(E8, H,  0.5);        
                            E13 = E8;
                            E12 = H;
                    }
            }
    
            vec3 res;
    
            if (fp.x < 0.25)
            { 
                    if (fp.y < 0.25) res = E0;
                    else if ((fp.y > 0.25) && (fp.y < 0.50)) res = E4;
                    else if ((fp.y > 0.50) && (fp.y < 0.75)) res = E8;
                    else res = E12;
            }
            else if ((fp.x > 0.25) && (fp.x < 0.50))
            {
                    if (fp.y < 0.25) res = E1;
                    else if ((fp.y > 0.25) && (fp.y < 0.50)) res = E5;
                    else if ((fp.y > 0.50) && (fp.y < 0.75)) res = E9;
                    else res = E13;
            }
            else if ((fp.x > 0.50) && (fp.x < 0.75))
            {
                    if (fp.y < 0.25) res = E2;
                    else if ((fp.y > 0.25) && (fp.y < 0.50)) res = E6;
                    else if ((fp.y > 0.50) && (fp.y < 0.75)) res = E10;
                    else res = E14;
            }
            else
            {
                    if (fp.y < 0.25) res = E3;
                    else if ((fp.y > 0.25) && (fp.y < 0.50)) res = E7;
                    else if ((fp.y > 0.50) && (fp.y < 0.75)) res = E11;
                    else res = E15;
            }
    
            return vec4(res, 1.0); 
    }
    
    void main() {
     gl_FragColor = v_vColour * effect();
    }
    
*/
