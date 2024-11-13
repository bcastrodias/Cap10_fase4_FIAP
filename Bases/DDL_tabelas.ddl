-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-11-13 07:44:49 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE tb_localidade (
    id_localidade     INTEGER NOT NULL,
    municipio         VARCHAR2(30 CHAR),
    unidade_federacao VARCHAR2(30 CHAR)
);

ALTER TABLE tb_localidade ADD CONSTRAINT tb_localidade_pk PRIMARY KEY ( id_localidade );

CREATE TABLE tb_processo_minerario (
    id_processo                 INTEGER NOT NULL,
    tb_rodada_id_rodada         INTEGER NOT NULL,
    tb_rodada_numero_rodada     INTEGER NOT NULL,
    tb_localidade_id_localidade INTEGER NOT NULL,
    processo_minerario          VARCHAR2(200 CHAR),
    numero_area                 INTEGER,
    situacao                    VARCHAR2(30 CHAR),
    modalidade                  VARCHAR2(30 CHAR),
    regime_disponibilidade      VARCHAR2(30),
    area_poligonal              INTEGER
);

ALTER TABLE tb_processo_minerario ADD CONSTRAINT tb_processo_minerario_pk PRIMARY KEY ( id_processo );

CREATE TABLE tb_rodada (
    id_rodada     INTEGER NOT NULL,
    numero_rodada INTEGER NOT NULL
);

ALTER TABLE tb_rodada ADD CONSTRAINT tb_rodada_pk PRIMARY KEY ( id_rodada,
                                                                numero_rodada );

CREATE TABLE tb_vencedor (
    id_vencedor                       INTEGER NOT NULL,
    nome_vencedor                     VARCHAR2(30 CHAR),
    cpf_cnpj_vencedor                 VARCHAR2(13 CHAR),
    valor_lance_vencedor_reais        INTEGER, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    tb_processo_minerario_id_processo INTEGER NOT NULL
);

ALTER TABLE tb_vencedor ADD CONSTRAINT tb_vencedor_pk PRIMARY KEY ( id_vencedor );

ALTER TABLE tb_processo_minerario
    ADD CONSTRAINT id_rodada FOREIGN KEY ( tb_rodada_id_rodada,
                                           tb_rodada_numero_rodada )
        REFERENCES tb_rodada ( id_rodada,
                               numero_rodada );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE tb_processo_minerario
    ADD CONSTRAINT tb_processo_minerario_tb_localidade_fk FOREIGN KEY ( tb_localidade_id_localidade )
        REFERENCES tb_localidade ( id_localidade );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              6
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   2
-- WARNINGS                                 0
