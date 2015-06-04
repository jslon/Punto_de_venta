--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.1
-- Dumped by pg_dump version 9.4.1
-- Started on 2015-06-03 15:17:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 200 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 200
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 26051)
-- Name: atributo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE atributo (
    id_atributo integer NOT NULL,
    atributo character varying(20),
    empresa character varying(20)
);


ALTER TABLE atributo OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 26054)
-- Name: Atributo_Id_Atributo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Atributo_Id_Atributo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Atributo_Id_Atributo_seq" OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 173
-- Name: Atributo_Id_Atributo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Atributo_Id_Atributo_seq" OWNED BY atributo.id_atributo;


--
-- TOC entry 174 (class 1259 OID 26056)
-- Name: factura_venta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factura_venta (
    no_factura integer NOT NULL,
    sub_total integer,
    total integer,
    fecha date,
    descuento integer,
    empresa character varying(20)
);


ALTER TABLE factura_venta OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 26059)
-- Name: Factura_Venta_No_Factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Factura_Venta_No_Factura_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Factura_Venta_No_Factura_seq" OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 175
-- Name: Factura_Venta_No_Factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Factura_Venta_No_Factura_seq" OWNED BY factura_venta.no_factura;


--
-- TOC entry 176 (class 1259 OID 26061)
-- Name: factura_compra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factura_compra (
    no_factura integer NOT NULL,
    fecha date,
    empresa character varying(20),
    cedula_judirica character varying(20)
);


ALTER TABLE factura_compra OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 26064)
-- Name: Factura_compra_No_Factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Factura_compra_No_Factura_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Factura_compra_No_Factura_seq" OWNER TO postgres;

--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 177
-- Name: Factura_compra_No_Factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Factura_compra_No_Factura_seq" OWNED BY factura_compra.no_factura;


--
-- TOC entry 178 (class 1259 OID 26066)
-- Name: permiso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE permiso (
    permisos character varying(20),
    id_permiso integer NOT NULL
);


ALTER TABLE permiso OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 26069)
-- Name: Permiso_Id_Permiso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Permiso_Id_Permiso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Permiso_Id_Permiso_seq" OWNER TO postgres;

--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 179
-- Name: Permiso_Id_Permiso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Permiso_Id_Permiso_seq" OWNED BY permiso.id_permiso;


--
-- TOC entry 180 (class 1259 OID 26071)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE producto (
    id_producto integer NOT NULL,
    cantidad integer,
    nombre character varying(20),
    marca character varying(20),
    empresa character varying(20),
    unidad integer,
    minimo character varying(10),
    precio integer
);


ALTER TABLE producto OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 26074)
-- Name: Producto_Id_Producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Producto_Id_Producto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Producto_Id_Producto_seq" OWNER TO postgres;

--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 181
-- Name: Producto_Id_Producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Producto_Id_Producto_seq" OWNED BY producto.id_producto;


--
-- TOC entry 182 (class 1259 OID 26076)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rol (
    id_rol integer NOT NULL,
    nombre character varying(20),
    empresa character varying(20)
);


ALTER TABLE rol OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 26079)
-- Name: Rol_Id_Rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Rol_Id_Rol_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Rol_Id_Rol_seq" OWNER TO postgres;

--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 183
-- Name: Rol_Id_Rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Rol_Id_Rol_seq" OWNED BY rol.id_rol;


--
-- TOC entry 184 (class 1259 OID 26081)
-- Name: unidad; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE unidad (
    id_unidad integer NOT NULL,
    unidad character varying(20),
    empresa character varying(20)
);


ALTER TABLE unidad OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 26084)
-- Name: Unidad_Id_Unidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Unidad_Id_Unidad_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Unidad_Id_Unidad_seq" OWNER TO postgres;

--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 185
-- Name: Unidad_Id_Unidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Unidad_Id_Unidad_seq" OWNED BY unidad.id_unidad;


--
-- TOC entry 186 (class 1259 OID 26086)
-- Name: valor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE valor (
    id_valor integer NOT NULL,
    valor character varying(50),
    empresa character varying(20)
);


ALTER TABLE valor OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 26089)
-- Name: Valor_Id_Valor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Valor_Id_Valor_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Valor_Id_Valor_seq" OWNER TO postgres;

--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 187
-- Name: Valor_Id_Valor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Valor_Id_Valor_seq" OWNED BY valor.id_valor;


--
-- TOC entry 188 (class 1259 OID 26091)
-- Name: cierre_diario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cierre_diario (
    fecha date NOT NULL,
    total integer,
    empresa character varying(20)
);


ALTER TABLE cierre_diario OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 26094)
-- Name: cierre_mensual; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cierre_mensual (
    fecha date NOT NULL,
    total integer,
    empresa character varying(20)
);


ALTER TABLE cierre_mensual OWNER TO postgres;

--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN cierre_mensual.total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN cierre_mensual.total IS '
';


--
-- TOC entry 190 (class 1259 OID 26097)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cliente (
    nombre character varying(20),
    apellido1 character varying(20),
    apellido2 character varying(20),
    cedula character varying(20) NOT NULL,
    empresa character varying(20)
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 26100)
-- Name: direccion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE direccion (
    id_propietario character varying(20),
    direccion character varying(100)
);


ALTER TABLE direccion OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 26103)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empresa (
    nombre character varying(20),
    cedula_juridica character varying(20) NOT NULL,
    logo bytea
);


ALTER TABLE empresa OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 26109)
-- Name: especificacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE especificacion (
    producto integer,
    atributo integer,
    valor integer
);


ALTER TABLE especificacion OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 26112)
-- Name: factura_cancelada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factura_cancelada (
    motivo character varying(100),
    fecha_cancelacion date,
    no_factura integer
);


ALTER TABLE factura_cancelada OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 26115)
-- Name: factura_producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factura_producto (
    empresa character varying(20),
    no_factura integer,
    id_producto integer,
    cantidad integer
);


ALTER TABLE factura_producto OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 26118)
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE proveedor (
    nombre character varying(20),
    cedula_juridica character varying(15) NOT NULL,
    empresa character varying(20),
    correo_contacto character varying(50),
    nombre_contacto character varying(30),
    pagina_web character varying(50)
);


ALTER TABLE proveedor OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 26121)
-- Name: rol_permiso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rol_permiso (
    id_rol integer,
    id_permiso integer
);


ALTER TABLE rol_permiso OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 26124)
-- Name: telefono; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE telefono (
    id_propietario character varying,
    telefono character varying(20)
);


ALTER TABLE telefono OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 26130)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    password character varying(128) NOT NULL,
    usuario character varying(20) NOT NULL,
    log character varying,
    empresa character varying(20),
    apellido1 character varying(20),
    apellido2 character varying(20),
    id_usuario character varying(20) NOT NULL,
    rol integer,
    nombre character varying(20)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 1974 (class 2604 OID 26136)
-- Name: id_atributo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY atributo ALTER COLUMN id_atributo SET DEFAULT nextval('"Atributo_Id_Atributo_seq"'::regclass);


--
-- TOC entry 1976 (class 2604 OID 26137)
-- Name: no_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_compra ALTER COLUMN no_factura SET DEFAULT nextval('"Factura_compra_No_Factura_seq"'::regclass);


--
-- TOC entry 1975 (class 2604 OID 26138)
-- Name: no_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_venta ALTER COLUMN no_factura SET DEFAULT nextval('"Factura_Venta_No_Factura_seq"'::regclass);


--
-- TOC entry 1977 (class 2604 OID 26139)
-- Name: id_permiso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permiso ALTER COLUMN id_permiso SET DEFAULT nextval('"Permiso_Id_Permiso_seq"'::regclass);


--
-- TOC entry 1978 (class 2604 OID 26140)
-- Name: id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto ALTER COLUMN id_producto SET DEFAULT nextval('"Producto_Id_Producto_seq"'::regclass);


--
-- TOC entry 1979 (class 2604 OID 26141)
-- Name: id_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rol ALTER COLUMN id_rol SET DEFAULT nextval('"Rol_Id_Rol_seq"'::regclass);


--
-- TOC entry 1980 (class 2604 OID 26142)
-- Name: id_unidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unidad ALTER COLUMN id_unidad SET DEFAULT nextval('"Unidad_Id_Unidad_seq"'::regclass);


--
-- TOC entry 1981 (class 2604 OID 26143)
-- Name: id_valor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY valor ALTER COLUMN id_valor SET DEFAULT nextval('"Valor_Id_Valor_seq"'::regclass);


--
-- TOC entry 1984 (class 2606 OID 26145)
-- Name: PK_Atributo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT "PK_Atributo" PRIMARY KEY (id_atributo);


--
-- TOC entry 2009 (class 2606 OID 26147)
-- Name: PK_Cierre_Diario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cierre_diario
    ADD CONSTRAINT "PK_Cierre_Diario" PRIMARY KEY (fecha);


--
-- TOC entry 2012 (class 2606 OID 26149)
-- Name: PK_Cierre_Mensual; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cierre_mensual
    ADD CONSTRAINT "PK_Cierre_Mensual" PRIMARY KEY (fecha);


--
-- TOC entry 2015 (class 2606 OID 26151)
-- Name: PK_Cliente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT "PK_Cliente" PRIMARY KEY (cedula);


--
-- TOC entry 2018 (class 2606 OID 26153)
-- Name: PK_Empresa; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empresa
    ADD CONSTRAINT "PK_Empresa" PRIMARY KEY (cedula_juridica);


--
-- TOC entry 1991 (class 2606 OID 26155)
-- Name: PK_Factura_Compra; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY factura_compra
    ADD CONSTRAINT "PK_Factura_Compra" PRIMARY KEY (no_factura);


--
-- TOC entry 1987 (class 2606 OID 26157)
-- Name: PK_Factura_Venta; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY factura_venta
    ADD CONSTRAINT "PK_Factura_Venta" PRIMARY KEY (no_factura);


--
-- TOC entry 1993 (class 2606 OID 26159)
-- Name: PK_Permiso; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY permiso
    ADD CONSTRAINT "PK_Permiso" PRIMARY KEY (id_permiso);


--
-- TOC entry 1997 (class 2606 OID 26161)
-- Name: PK_Producto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT "PK_Producto" PRIMARY KEY (id_producto);


--
-- TOC entry 2028 (class 2606 OID 26163)
-- Name: PK_Proveedor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT "PK_Proveedor" PRIMARY KEY (cedula_juridica);


--
-- TOC entry 2000 (class 2606 OID 26165)
-- Name: PK_Rol; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rol
    ADD CONSTRAINT "PK_Rol" PRIMARY KEY (id_rol);


--
-- TOC entry 2003 (class 2606 OID 26167)
-- Name: PK_Unidad; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY unidad
    ADD CONSTRAINT "PK_Unidad" PRIMARY KEY (id_unidad);


--
-- TOC entry 2037 (class 2606 OID 26169)
-- Name: PK_Usuario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT "PK_Usuario" PRIMARY KEY (id_usuario);


--
-- TOC entry 2006 (class 2606 OID 26171)
-- Name: PK_Valor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY valor
    ADD CONSTRAINT "PK_Valor" PRIMARY KEY (id_valor);


--
-- TOC entry 2019 (class 1259 OID 26172)
-- Name: FKI_Atributo_Especificacion; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Atributo_Especificacion" ON especificacion USING btree (atributo);


--
-- TOC entry 2013 (class 1259 OID 26173)
-- Name: FKI_Cliente_Empresa; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Cliente_Empresa" ON cliente USING btree (empresa);


--
-- TOC entry 2031 (class 1259 OID 26174)
-- Name: FKI_Cliente_Telefono; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Cliente_Telefono" ON telefono USING btree (id_propietario);


--
-- TOC entry 1982 (class 1259 OID 26175)
-- Name: FKI_Empresa_Atributo; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Atributo" ON atributo USING btree (empresa);


--
-- TOC entry 2007 (class 1259 OID 26176)
-- Name: FKI_Empresa_Cierre_Diario; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Cierre_Diario" ON cierre_diario USING btree (empresa);


--
-- TOC entry 2010 (class 1259 OID 26177)
-- Name: FKI_Empresa_Cierre_Mensual; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Cierre_Mensual" ON cierre_mensual USING btree (empresa);


--
-- TOC entry 2016 (class 1259 OID 26178)
-- Name: FKI_Empresa_Direccion; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Direccion" ON direccion USING btree (id_propietario);


--
-- TOC entry 1988 (class 1259 OID 26179)
-- Name: FKI_Empresa_Factura_Compra; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Factura_Compra" ON factura_compra USING btree (empresa);


--
-- TOC entry 2023 (class 1259 OID 26180)
-- Name: FKI_Empresa_Factura_Producto; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Factura_Producto" ON factura_producto USING btree (empresa);


--
-- TOC entry 1985 (class 1259 OID 26181)
-- Name: FKI_Empresa_Factura_Venta; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Factura_Venta" ON factura_venta USING btree (empresa);


--
-- TOC entry 1994 (class 1259 OID 26182)
-- Name: FKI_Empresa_Producto; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Producto" ON producto USING btree (empresa);


--
-- TOC entry 2026 (class 1259 OID 26183)
-- Name: FKI_Empresa_Proveedor; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Proveedor" ON proveedor USING btree (empresa);


--
-- TOC entry 1998 (class 1259 OID 26184)
-- Name: FKI_Empresa_Rol; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Rol" ON rol USING btree (empresa);


--
-- TOC entry 2032 (class 1259 OID 26185)
-- Name: FKI_Empresa_Telefono; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Telefono" ON telefono USING btree (id_propietario);


--
-- TOC entry 2001 (class 1259 OID 26186)
-- Name: FKI_Empresa_Unidad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Unidad" ON unidad USING btree (empresa);


--
-- TOC entry 2034 (class 1259 OID 26187)
-- Name: FKI_Empresa_Usuario; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Usuario" ON usuario USING btree (empresa);


--
-- TOC entry 2004 (class 1259 OID 26188)
-- Name: FKI_Empresa_Valor; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Empresa_Valor" ON valor USING btree (empresa);


--
-- TOC entry 2022 (class 1259 OID 26189)
-- Name: FKI_Factura_Venta_Factura_Cancelada; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Factura_Venta_Factura_Cancelada" ON factura_cancelada USING btree (no_factura);


--
-- TOC entry 2024 (class 1259 OID 26190)
-- Name: FKI_Factura_Venta_Factura_Producto; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Factura_Venta_Factura_Producto" ON factura_producto USING btree (no_factura);


--
-- TOC entry 2029 (class 1259 OID 26191)
-- Name: FKI_Permiso_Rol_Permiso; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Permiso_Rol_Permiso" ON rol_permiso USING btree (id_permiso);


--
-- TOC entry 2020 (class 1259 OID 26192)
-- Name: FKI_Producto; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Producto" ON especificacion USING btree (producto);


--
-- TOC entry 2025 (class 1259 OID 26193)
-- Name: FKI_Producto_Factura_Producto; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Producto_Factura_Producto" ON factura_producto USING btree (id_producto);


--
-- TOC entry 1989 (class 1259 OID 26194)
-- Name: FKI_Proveedor_Factura_Compra; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Proveedor_Factura_Compra" ON factura_compra USING btree (cedula_judirica);


--
-- TOC entry 2030 (class 1259 OID 26195)
-- Name: FKI_Rol_Rol_Permiso; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Rol_Rol_Permiso" ON rol_permiso USING btree (id_rol);


--
-- TOC entry 2035 (class 1259 OID 26196)
-- Name: FKI_Rol_Usuario; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Rol_Usuario" ON usuario USING btree (rol);


--
-- TOC entry 1995 (class 1259 OID 26197)
-- Name: FKI_Unidad_Producto; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Unidad_Producto" ON producto USING btree (unidad);


--
-- TOC entry 2033 (class 1259 OID 26198)
-- Name: FKI_Usuario_Telefono; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Usuario_Telefono" ON telefono USING btree (id_propietario);


--
-- TOC entry 2021 (class 1259 OID 26199)
-- Name: FKI_Valor_Especificacion; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "FKI_Valor_Especificacion" ON especificacion USING btree (valor);


--
-- TOC entry 2051 (class 2606 OID 26200)
-- Name: FK_Atributo_Especificacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY especificacion
    ADD CONSTRAINT "FK_Atributo_Especificacion" FOREIGN KEY (atributo) REFERENCES atributo(id_atributo);


--
-- TOC entry 2049 (class 2606 OID 26205)
-- Name: FK_Cliente_Empresa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT "FK_Cliente_Empresa" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2061 (class 2606 OID 26210)
-- Name: FK_Cliente_Telefono; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT "FK_Cliente_Telefono" FOREIGN KEY (id_propietario) REFERENCES cliente(cedula);


--
-- TOC entry 2038 (class 2606 OID 26215)
-- Name: FK_Empresa_Atributo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT "FK_Empresa_Atributo" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2047 (class 2606 OID 26220)
-- Name: FK_Empresa_Cierre_Diario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cierre_diario
    ADD CONSTRAINT "FK_Empresa_Cierre_Diario" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2048 (class 2606 OID 26225)
-- Name: FK_Empresa_Cierre_Mensual; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cierre_mensual
    ADD CONSTRAINT "FK_Empresa_Cierre_Mensual" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2050 (class 2606 OID 26230)
-- Name: FK_Empresa_Direccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY direccion
    ADD CONSTRAINT "FK_Empresa_Direccion" FOREIGN KEY (id_propietario) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2040 (class 2606 OID 26235)
-- Name: FK_Empresa_Factura_Compra; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_compra
    ADD CONSTRAINT "FK_Empresa_Factura_Compra" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2055 (class 2606 OID 26240)
-- Name: FK_Empresa_Factura_Producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_producto
    ADD CONSTRAINT "FK_Empresa_Factura_Producto" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2039 (class 2606 OID 26245)
-- Name: FK_Empresa_Factura_Venta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_venta
    ADD CONSTRAINT "FK_Empresa_Factura_Venta" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2042 (class 2606 OID 26250)
-- Name: FK_Empresa_Producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT "FK_Empresa_Producto" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2058 (class 2606 OID 26255)
-- Name: FK_Empresa_Proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT "FK_Empresa_Proveedor" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2044 (class 2606 OID 26260)
-- Name: FK_Empresa_Rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rol
    ADD CONSTRAINT "FK_Empresa_Rol" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2062 (class 2606 OID 26265)
-- Name: FK_Empresa_Telefono; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT "FK_Empresa_Telefono" FOREIGN KEY (id_propietario) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2045 (class 2606 OID 26270)
-- Name: FK_Empresa_Unidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unidad
    ADD CONSTRAINT "FK_Empresa_Unidad" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2064 (class 2606 OID 26275)
-- Name: FK_Empresa_Usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT "FK_Empresa_Usuario" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2046 (class 2606 OID 26280)
-- Name: FK_Empresa_Valor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY valor
    ADD CONSTRAINT "FK_Empresa_Valor" FOREIGN KEY (empresa) REFERENCES empresa(cedula_juridica);


--
-- TOC entry 2054 (class 2606 OID 26285)
-- Name: FK_Factura_Venta_Factura_Cancelada; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_cancelada
    ADD CONSTRAINT "FK_Factura_Venta_Factura_Cancelada" FOREIGN KEY (no_factura) REFERENCES factura_venta(no_factura);


--
-- TOC entry 2056 (class 2606 OID 26290)
-- Name: FK_Factura_Venta_Factura_Producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_producto
    ADD CONSTRAINT "FK_Factura_Venta_Factura_Producto" FOREIGN KEY (no_factura) REFERENCES factura_venta(no_factura);


--
-- TOC entry 2059 (class 2606 OID 26295)
-- Name: FK_Permiso_Rol_Permiso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rol_permiso
    ADD CONSTRAINT "FK_Permiso_Rol_Permiso" FOREIGN KEY (id_permiso) REFERENCES permiso(id_permiso);


--
-- TOC entry 2052 (class 2606 OID 26300)
-- Name: FK_Producto_Especificacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY especificacion
    ADD CONSTRAINT "FK_Producto_Especificacion" FOREIGN KEY (producto) REFERENCES producto(id_producto);


--
-- TOC entry 2057 (class 2606 OID 26305)
-- Name: FK_Producto_Factura_Producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_producto
    ADD CONSTRAINT "FK_Producto_Factura_Producto" FOREIGN KEY (id_producto) REFERENCES producto(id_producto);


--
-- TOC entry 2041 (class 2606 OID 26310)
-- Name: FK_Proveedor_Factura_Compra; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura_compra
    ADD CONSTRAINT "FK_Proveedor_Factura_Compra" FOREIGN KEY (cedula_judirica) REFERENCES proveedor(cedula_juridica);


--
-- TOC entry 2060 (class 2606 OID 26315)
-- Name: FK_Rol_Rol_Permiso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rol_permiso
    ADD CONSTRAINT "FK_Rol_Rol_Permiso" FOREIGN KEY (id_rol) REFERENCES rol(id_rol);


--
-- TOC entry 2065 (class 2606 OID 26320)
-- Name: FK_Rol_Usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT "FK_Rol_Usuario" FOREIGN KEY (rol) REFERENCES rol(id_rol);


--
-- TOC entry 2043 (class 2606 OID 26325)
-- Name: FK_Unidad_Producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT "FK_Unidad_Producto" FOREIGN KEY (unidad) REFERENCES unidad(id_unidad);


--
-- TOC entry 2063 (class 2606 OID 26330)
-- Name: FK_Usuario_Telefono; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT "FK_Usuario_Telefono" FOREIGN KEY (id_propietario) REFERENCES usuario(id_usuario);


--
-- TOC entry 2053 (class 2606 OID 26335)
-- Name: FK_Valor_Especificacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY especificacion
    ADD CONSTRAINT "FK_Valor_Especificacion" FOREIGN KEY (valor) REFERENCES valor(id_valor);


--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-06-03 15:17:19

--
-- PostgreSQL database dump complete
--

