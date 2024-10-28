CREATE TABLE "ANIMALES" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL,
  "FechaNacimiento" DATE,
  "IDCuidador" SERIAL,
  "IDHabitat" SERIAL,
  "IDEspecie" SERIAL
);

CREATE TABLE "CUIDADOR" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL,
  "FechaContratacion" DATE NOT NULL,
  "IDEspecialidad" SERIAL
);

CREATE TABLE "ESPECIE" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL,
  "IDFamilia" SERIAL,
  "IDEstadoConservacion" SERIAL
);

CREATE TABLE "HABITAT" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL,
  "IDUbicacion" SERIAL,
  "IDClima" SERIAL
);

CREATE TABLE "HABITAT_VISITANTES" (
  "ID" SERIAL PRIMARY KEY,
  "IDHabitat" SERIAL,
  "IDVisitantes" SERIAL
);

CREATE TABLE "VISITANTES" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL,
  "FechaVisita" DATE
);

CREATE TABLE "ESPECIALIDAD" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL
);

CREATE TABLE "FAMILIA" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL
);

CREATE TABLE "UBICACION" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL
);

CREATE TABLE "ESTADO_CONSERVACION" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL
);

CREATE TABLE "CLIMA" (
  "ID" SERIAL PRIMARY KEY,
  "Nombre" VARCHAR NOT NULL
);

ALTER TABLE "ANIMALES" ADD FOREIGN KEY ("IDCuidador") REFERENCES "CUIDADOR" ("ID");

ALTER TABLE "ANIMALES" ADD FOREIGN KEY ("IDHabitat") REFERENCES "HABITAT" ("ID");

ALTER TABLE "ANIMALES" ADD FOREIGN KEY ("IDEspecie") REFERENCES "ESPECIE" ("ID");

ALTER TABLE "CUIDADOR" ADD FOREIGN KEY ("IDEspecialidad") REFERENCES "ESPECIALIDAD" ("ID");

ALTER TABLE "ESPECIE" ADD FOREIGN KEY ("IDFamilia") REFERENCES "FAMILIA" ("ID");

ALTER TABLE "ESPECIE" ADD FOREIGN KEY ("IDEstadoConservacion") REFERENCES "ESTADO_CONSERVACION" ("ID");

ALTER TABLE "HABITAT" ADD FOREIGN KEY ("IDUbicacion") REFERENCES "UBICACION" ("ID");

ALTER TABLE "HABITAT" ADD FOREIGN KEY ("IDClima") REFERENCES "CLIMA" ("ID");

ALTER TABLE "HABITAT_VISITANTES" ADD FOREIGN KEY ("IDHabitat") REFERENCES "HABITAT" ("ID");

ALTER TABLE "HABITAT_VISITANTES" ADD FOREIGN KEY ("IDVisitantes") REFERENCES "VISITANTES" ("ID");
