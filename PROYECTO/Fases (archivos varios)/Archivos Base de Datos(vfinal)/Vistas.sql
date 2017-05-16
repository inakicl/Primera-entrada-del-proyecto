-- CREACIÓN DE VISTAS

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AVISO_VISTA" ("FECHA_AVISO", "CP_FECHA", "NOMBRE", "APELLIDO_1", "TEXTO", "CP_TRABAJADOR_ID_TRABAJADOR", "TRABAJADOR_ID_TRABAJADOR") AS
  SELECT A.FECHA_AVISO, A.CP_FECHA, T.NOMBRE, T.APELLIDO_1, A.TEXTO, A.CP_TRABAJADOR_ID_TRABAJADOR, A.TRABAJADOR_ID_TRABAJADOR

FROM AVISO A, TRABAJADOR T

WHERE A.CP_TRABAJADOR_ID_TRABAJADOR = T.ID_TRABAJADOR;
/

CREATE OR REPLACE FORCE VIEW "SYSTEM"."CP_VISTA" ("FECHA", "KM_INICIO", "KM_FINAL", "GASTO_GASOIL", "GASTO_AUTOPISTA", "GASTO_DIETAS", "OTROS_GASTOS", "INCIDENCIAS_POSIBLES", "EXCESO_HORAS", "CERRAR_LOGIS", "VERIFICACION_ADMIN", "TRABAJADOR_ID_TRABAJADOR", "NOMBRE", "APELLIDO_1", "VEHICULO_MATRICULA", "CENTRO_TRABAJO_ID_CENTRO") AS
  SELECT CP.FECHA, CP.KM_INICIO, CP.KM_FINAL, CP.GASTO_GASOIL,
CP.GASTO_AUTOPISTA, CP.GASTO_DIETAS, CP.OTROS_GASTOS, CP.INCIDENCIAS_POSIBLES,
CP.EXCESO_HORAS, CP.CERRAR_LOGIS, CP.VERIFICACIÓN_ADMIN,
CP.TRABAJADOR_ID_TRABAJADOR, TRABAJADOR.NOMBRE, TRABAJADOR.APELLIDO_1,
CP.VEHICULO_MATRICULA, TRABAJADOR.CENTRO_TRABAJO_ID_CENTRO

FROM CP, TRABAJADOR
WHERE CP.TRABAJADOR_ID_TRABAJADOR = TRABAJADOR.ID_TRABAJADOR;
/


  CREATE OR REPLACE FORCE VIEW "SYSTEM"."LP_VISTA" ("HORA_INICIO", "HORA_FINAL", "CP_FECHA", "CP_TRABAJADOR_ID_TRABAJADOR", "NOMBRE", "APELLIDO_1") AS
  SELECT LP.HORA_INICIO, LP.HORA_FINAL, LP.CP_FECHA,
LP.CP_TRABAJADOR_ID_TRABAJADOR, TRABAJADOR.NOMBRE, TRABAJADOR.APELLIDO_1
FROM LP, TRABAJADOR
WHERE LP.CP_TRABAJADOR_ID_TRABAJADOR = TRABAJADOR.ID_TRABAJADOR;
/