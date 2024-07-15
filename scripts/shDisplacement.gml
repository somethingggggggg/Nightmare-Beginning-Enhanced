return shader_pixel_create_base64("
    eJxlkLFOAkEURc/MLmQLE37AxC21IQFjQYMBGgssFEnsyAprIAEhQKKFxdhTWFpO
    aaCQL7A3gcZv4DscMzNLYmL37rl37ssbIY35MRUaN7X6IfABCGlMAFiNgHfgFggQ
    CPL0LQeeAOkikueMLVzOs7eM9QazyTDppqP0Yc5qtQo5cE0i8y3ct+/ZYzJPp51R
    MuF/fjLrlDt3XA660/FsfD+Pj69P4otmqxm3+kkvncaN8WgyGKbTuFIsV4qVs3Lx
    tFQqcQU5QUFvN4vz7WbzCVRB1SyXjjetrgJ1u+fIn6cgWGfzK1FB72cRFXQIIUQK
    WAvQgrYWzg+VYJn5wvoali9gVM59Uahg6bjPSAVt12G5zwQKdkpgdN3pgtfRTkun
    8wq+19LttTsjJWlnfdazXca98cz2fSnJUtu7/nYS7XxH5LUx8AukomNe
")

/*
sampler2D water_map : register(s0);
sampler2D displacement : register(s1);
float t : register(c0);

struct PS_INPUT {
    float2 tex : TEXCOORD;
};

struct PS_OUTPUT {
    float4 col : COLOR;
};

PS_OUTPUT main(PS_INPUT input) {
    PS_OUTPUT output;

    float2 disp_uv = float2(input.tex.x * 1.1 - 0.4 - t / 8, input.tex.y * 1.1 + t / 8) * 2 * 8;

    float2 uv = (input.tex + 0.2 + t / 4) * 4 * 8;
    uv += tex2D(displacement, disp_uv).r;

    output.col = tex2D(water_map, uv);

    return output;
}
