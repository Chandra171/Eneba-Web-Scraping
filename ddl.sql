/*
=================================================
MileStone 1

Nama  : Chandra Julian Adhiyasa
Batch : CODA-RMT-016

Memasukkan data hasil transformasi dari web scraping eneba ke dalam database
=================================================
*/

-- Membuat database
create database coda016m1;

-- Membuat tabel products dengan 10 kolom
create table products(
	id serial primary key,
	name text,
	ori_price float,
	disc_price float,
	disc float,
	region text,
	platforms text,
	review int,
	img text,
	link text
);

/* 
Input data dari file csv hasil dari data transformation dan web scraping web eneba
ke dalam tabel products
*/
copy products(
	name, ori_price, disc_price, disc, region, platforms,
	review, img, link
) from 'C:\temp\hasil_akhir.csv' delimiter ',' csv header;

-- Tampilkan tabel products yang telah diisi valuenya
select * from products