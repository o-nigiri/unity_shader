Shader "Custom/transparent_002" {

	//Properties {
		//_BaseColor("Base Color", Color) = (1, 1, 1, 1)
	//}

	SubShader {
		Tags { "RenderType"="Transparent" }
		LOD 200

		CGPROGRAM
		#pragma surface surf Standard alpha:fade

		#pragma target 3.0

		struct Input {
			//float2 uv_MainTex;
			float3 worldNormal;
			float3 viewDir;
		};

		//fixed4 _BaseColor;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Albedo = fixed4(1, 1, 1, 1);
			float alpha = 1 - (abs(dot(IN.viewDir, IN.worldNormal)));
			o.Alpha = alpha * 1.5f;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
