-- F1 Demo — 00: esquema AISLADO F1DEMO (ejecutar como ADMIN). No toca XENCO ni PTMFRAUD.
declare n number;
begin
  select count(*) into n from all_users where username='F1DEMO';
  if n=0 then execute immediate 'create user f1demo identified by "<CLAVE_F1DEMO>"'; end if;
end;
/
grant db_developer_role to f1demo;
grant create session, create table, create view to f1demo;
grant execute on dbms_cloud_ai to f1demo;
alter user f1demo quota unlimited on data;

-- Resource principal para que SELECT AI use OCI GenAI sin claves
begin dbms_cloud_admin.enable_resource_principal(username=>'F1DEMO'); end;
/

-- REST (ORDS) para cargar por HTTPS 443
begin
  ords_admin.enable_schema(p_enabled=>true, p_schema=>'F1DEMO',
    p_url_mapping_type=>'BASE_PATH', p_url_mapping_pattern=>'f1demo', p_auto_rest_auth=>false);
  commit;
end;
/
