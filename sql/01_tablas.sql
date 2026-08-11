-- F1 Demo — 01: tablas + vista (esquema F1DEMO)
create table escuderias (
  id_escuderia number primary key,
  nombre       varchar2(40),
  pais         varchar2(40)
);

create table pilotos (
  id_piloto    number primary key,
  nombre       varchar2(60),
  id_escuderia number references escuderias(id_escuderia),
  nacionalidad varchar2(40),
  puntos       number,
  victorias    number,
  podios       number
);

create or replace view clasificacion as
  select p.nombre       as piloto,
         e.nombre       as escuderia,
         p.nacionalidad as nacionalidad,
         p.puntos       as puntos,
         p.victorias    as victorias,
         p.podios       as podios
  from pilotos p
  join escuderias e on e.id_escuderia = p.id_escuderia;

-- Comentarios (ayudan a SELECT AI a entender el modelo)
comment on table  escuderias        is 'Equipos o constructores de Formula 1';
comment on table  pilotos           is 'Pilotos de la temporada con sus puntos del campeonato';
comment on column pilotos.puntos    is 'Puntos acumulados en el campeonato de pilotos';
comment on column pilotos.victorias is 'Numero de carreras ganadas en la temporada';
comment on column pilotos.podios    is 'Numero de veces en el podio (top 3)';
comment on table  clasificacion     is 'Clasificacion del campeonato: piloto, escuderia y puntos';
