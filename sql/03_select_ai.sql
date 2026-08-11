-- F1 Demo — 03: perfil SELECT AI (ejecutar como F1DEMO)
-- Usa OCI GenAI por RESOURCE PRINCIPAL (sin claves). Mismo patron que XENCO_AI.
begin
  begin dbms_cloud_ai.drop_profile('F1_AI'); exception when others then null; end;
  dbms_cloud_ai.create_profile(
    profile_name => 'F1_AI',
    attributes   => '{
      "provider": "oci",
      "credential_name": "OCI$RESOURCE_PRINCIPAL",
      "region": "us-chicago-1",
      "oci_compartment_id": "<OCID_COMPARTMENT_GENAI>",
      "model": "meta.llama-3.3-70b-instruct",
      "comments": "true",
      "object_list": [
        {"owner":"F1DEMO","name":"PILOTOS"},
        {"owner":"F1DEMO","name":"ESCUDERIAS"},
        {"owner":"F1DEMO","name":"CLASIFICACION"}
      ]
    }');
  dbms_cloud_ai.set_profile('F1_AI');
end;
/

-- Pruebas (en espanol):
--  select dbms_cloud_ai.generate(prompt=>'quien lidera el campeonato', profile_name=>'F1_AI', action=>'showsql') from dual;
--  select dbms_cloud_ai.generate(prompt=>'top 3 escuderias por puntos', profile_name=>'F1_AI', action=>'runsql') from dual;
