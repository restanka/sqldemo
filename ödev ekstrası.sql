
                                              --L�KE KULLANIMI �RNEK


select * from Oyuncular where adi like '%nan'
select * from oyuncular where Soyadi like 'de%'
select * from Filmler where Adi like 'G�r�nmez Adam'
                                              --COUNT KULLANIMI �RNEK


select count (*) from Filmler
select count (*) from FilmlerOyuncular
select count (*) from Karakterler
select count(gisesi) as KayitSayisi from Filmler
                                             --ORDER BY KULLANIMI �RNEK


select * from Filmler order by Adi asc
select * from Tur order by Adi desc
select * from Filmler order by 2 asc 
                                             --G�STER�M �RNEKLER� VE K���K B�Y�K FONKS�YONEL �RNEKLER


select * from Filmler where Id = 3
select * from Filmler where Id <= 34 order by adi
select * from Tur where Id >=6 or Id <= 8  
select * from Tur where Id >=3 and Id <= 7
select * from Filmler where Adi in ('G�r�nmez adam')
                                              --DOGUM TAR�H� B�Y�K VEYA K�� OLAN ORNEKLER


select max(dogumtarihi) maksimumyas from Oyuncular
select min(dogumtarihi) from Oyuncular                     

                                               --�NNER JO�N KULLANIMI �RNEKLEME


select Filmler.Adi,yapimyili,gisesi,Oyuncular.Adi from Filmler inner join Oyuncular on Oyuncular.Soyadi = Soyadi
select * from Oyuncular inner join Filmler on Oyuncular.Soyadi = Soyadi


                                                --�S NULL �S NOT NULL KULLANIM �RNEKLEME


select * from Tur where adi is not null
select * from Tur where adi is null

