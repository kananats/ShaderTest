Shader "Test/Template" {
	Properties {
		_MainTex("Texture", 2D) = "white" { }
	}
	SubShader {
		Tags { 
			"RenderType" = "Opaque"
		}
		CGPROGRAM
		#pragma surface surf Lambert
		struct Input {
			float2 uv_MainTex;
			float3 worldPos;
		};

	    sampler2D _MainTex;

		void vert(inout appdata_full v) {
		}

		void surf(Input IN, inout SurfaceOutput o) {
			o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb;
		}
		ENDCG
	}
	Fallback "Diffuse"
}