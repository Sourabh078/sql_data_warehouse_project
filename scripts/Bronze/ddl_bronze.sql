
/*
======================================
DDl Scripts : Create Bronze Tables
======================================
Script creates tables in the Bronze schema, dropping exixting tables if they already exist.
==========================================================================================
*/
create database DataWarehouse;

use DataWarehouse;
create schema Bronze;
create schema Silver;
create schema Gold;

create table bronze.crm_cust_info (
	cst_id int,
	cst_key varchar(50),
	cst_firstname varchar(50),
	cst_lastname varchar(50),
	cst_material_status varchar(50),
	cst_gender varchar(50),
	cst_create_date DATE
);
drop table crm_cust_info;

select * from crm_cust_info;

create table bronze.crm_product_info(
	prd_id int,
	prd_key nvarchar(50),
	prd_mm nvarchar(50),
	prd_cost int,
	prd_line nvarchar(50),
	prd_start_dt date,
	prd_end_dr date
);
select * from crm_product_info;

create table bronze.crm_sales_details(
	sls_ord_num nvarchar(50),
	sls_prd_kay nvarchar(50),
	sls_cust_id int,
	sls_ord_dt int,
    sls_ship_dt int,
	sls_due_dt int,
	sls_sales int,
	sls_quantity int,
	sls_price int
);
select * from crm_sales_details;

create table bronze.erp_cust_AZ12(
  CID nvarchar(50),
  bdate date,
  gender nvarchar(50)
);

select * from erp_cust_AZ12;

create table bronze.erp_loc_A101(
  cid nvarchar(50),
  cntry nvarchar(50)
);
select * from erp_loc_A101;

create table bronze.erp_px_cat_G1V2(
  id nvarchar(50),
  cat nvarchar(50),
  subcat nvarchar(50),
  maintenance nvarchar(50)
);
select * from erp_px_cat_G1V2;
