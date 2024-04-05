/*
 Navicat Premium Data Transfer

 Source Server         : localhost_1521_xe
 Source Server Type    : Oracle
 Source Server Version : 210000 (Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production)
 Source Host           : localhost:1521
 Source Schema         : DEV_TEST

 Target Server Type    : Oracle
 Target Server Version : 210000 (Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 04/04/2024 21:57:45
*/


-- ----------------------------
-- Table structure for PRODUCT
-- ----------------------------
DROP TABLE "DEV_TEST"."PRODUCT";
CREATE TABLE "DEV_TEST"."PRODUCT" (
  "PRODUCTID" NUMBER VISIBLE DEFAULT "DEV_TEST"."ISEQ$$_75702".nextval NOT NULL,
  "NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "DESCRIPTION" VARCHAR2(255 BYTE) VISIBLE,
  "BRAND" VARCHAR2(255 BYTE) VISIBLE,
  "PRICE" NUMBER(15,2) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for REVIEW
-- ----------------------------
DROP TABLE "DEV_TEST"."REVIEW";
CREATE TABLE "DEV_TEST"."REVIEW" (
  "REVIEWID" NUMBER VISIBLE DEFAULT "DEV_TEST"."ISEQ$$_75792".nextval NOT NULL,
  "PRODUCTID" NUMBER VISIBLE NOT NULL,
  "USERID" NUMBER VISIBLE DEFAULT 1 NOT NULL,
  "RATING" NUMBER VISIBLE NOT NULL,
  "DESCRIPTION" VARCHAR2(255 BYTE) VISIBLE,
  "REVIEWDATE" DATE VISIBLE DEFAULT SYSDATE,
  "TITLE" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Sequence structure for ISEQ$$_75702
-- ----------------------------
DROP SEQUENCE "DEV_TEST"."ISEQ$$_75702";
CREATE SEQUENCE "DEV_TEST"."ISEQ$$_75702" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_75792
-- ----------------------------
DROP SEQUENCE "DEV_TEST"."ISEQ$$_75792";
CREATE SEQUENCE "DEV_TEST"."ISEQ$$_75792" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table PRODUCT
-- ----------------------------
ALTER TABLE "DEV_TEST"."PRODUCT" ADD CONSTRAINT "SYS_C008223" PRIMARY KEY ("PRODUCTID");

-- ----------------------------
-- Checks structure for table PRODUCT
-- ----------------------------
ALTER TABLE "DEV_TEST"."PRODUCT" ADD CONSTRAINT "SYS_C008220" CHECK ("PRODUCTID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DEV_TEST"."PRODUCT" ADD CONSTRAINT "SYS_C008221" CHECK ("NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DEV_TEST"."PRODUCT" ADD CONSTRAINT "SYS_C008222" CHECK ("PRICE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEW
-- ----------------------------
ALTER TABLE "DEV_TEST"."REVIEW" ADD CONSTRAINT "SYS_C008229" PRIMARY KEY ("REVIEWID");

-- ----------------------------
-- Checks structure for table REVIEW
-- ----------------------------
ALTER TABLE "DEV_TEST"."REVIEW" ADD CONSTRAINT "SYS_C008224" CHECK ("REVIEWID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DEV_TEST"."REVIEW" ADD CONSTRAINT "SYS_C008225" CHECK ("PRODUCTID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DEV_TEST"."REVIEW" ADD CONSTRAINT "SYS_C008226" CHECK ("USERID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DEV_TEST"."REVIEW" ADD CONSTRAINT "SYS_C008227" CHECK ("RATING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DEV_TEST"."REVIEW" ADD CONSTRAINT "SYS_C008228" CHECK (Rating BETWEEN 1 AND 5) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEW
-- ----------------------------
ALTER TABLE "DEV_TEST"."REVIEW" ADD CONSTRAINT "FK_REVIEW_PRODUCT" FOREIGN KEY ("PRODUCTID") REFERENCES "DEV_TEST"."PRODUCT" ("PRODUCTID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
