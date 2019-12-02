;              
CREATE USER IF NOT EXISTS "BACKENDFLAGS" PASSWORD '' ADMIN;    
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_E6B8EEDF_EF75_4E42_8974_D4BAF774AF7A" START WITH 5 BELONGS_TO_TABLE; 
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_34D70DA9_4630_472C_BE7E_1D58E35B4ACB" START WITH 5 BELONGS_TO_TABLE; 
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_2C0AA95A_5769_44D6_AE07_7627270FCFD4" START WITH 1 BELONGS_TO_TABLE; 
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_8F1D9E8D_B929_48E3_AEE0_0C905C048CC7" START WITH 11 BELONGS_TO_TABLE;
CREATE CACHED TABLE "PUBLIC"."CONTINENT"(
    "ID" BIGINT DEFAULT NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_34D70DA9_4630_472C_BE7E_1D58E35B4ACB" NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_34D70DA9_4630_472C_BE7E_1D58E35B4ACB",
    "CONTINENT" VARCHAR(255)
);            
ALTER TABLE "PUBLIC"."CONTINENT" ADD CONSTRAINT "PUBLIC"."PK_CONTINENT" PRIMARY KEY("ID");     
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.CONTINENT;
CREATE CACHED TABLE "PUBLIC"."COUNTRY"(
    "ID" BIGINT DEFAULT NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_8F1D9E8D_B929_48E3_AEE0_0C905C048CC7" NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_8F1D9E8D_B929_48E3_AEE0_0C905C048CC7",
    "NAME" VARCHAR(255),
    "FLAG" VARCHAR(255),
    "CONTINENT_ID" BIGINT
);               
ALTER TABLE "PUBLIC"."COUNTRY" ADD CONSTRAINT "PUBLIC"."PK_COUNTRY" PRIMARY KEY("ID");         
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.COUNTRY; 
ALTER TABLE "PUBLIC"."COUNTRY" ADD CONSTRAINT "PUBLIC"."FK_COUNTRY_CONTINENT_ID" FOREIGN KEY("CONTINENT_ID") REFERENCES "PUBLIC"."CONTINENT"("ID") NOCHECK;    