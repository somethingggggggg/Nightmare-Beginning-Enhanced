return shader_pixel_create_base64("
    eJxNj7FKw1AUhr+bpBhEyAsIZrRLaCIdMtRi6+AQB43gUijBpFhoSUj7ABncHBrf
    IHuXPkOfJc/hlXuj1HM48P/f+TnciyHltxwwfbmbXAKfAIaUBqA8Aj6Ae8DU1iBS
    HJipaBchBbZAnKyLVVZicYHQ3dUiSTP2+7268p8D45OEYjMP5gMel29lvskXW/f6
    ue8+RHHkxu9JmpXuNF8Xy1VWuqEXhF44DLwb3/d5gp7AaUbnr7e743Dcn+1G6t5V
    98QKzMNJO/WvrrGdZqK/5lTQHrDbpgem6Lya2tZ7uxK0ahoLLDj723+BrBQTmtEo
    3mUxsB2tpYQfrmZCIw==
")

/*
    SamplerState Sampler : register(s0);

    struct PS_INPUT {
        float4 position: POSITION0;
        float2 uv: TEXCOORD0;
        float4 color: COLOR;
    };

    struct PS_OUTPUT {
        float4 color: COLOR;
    };

    uniform float fade = 0.5;

    PS_OUTPUT main(PS_INPUT input) {
        PS_OUTPUT output;

        float4 diffuse = tex2D(Sampler,input.uv) * input.color;

        float gray = dot(diffuse.rgb,float3(0.21,0.71,0.07));

        output.color = float4(lerp(diffuse.rgb,float3(gray,gray,gray),fade),diffuse.a);

        return output;
    }
*/
