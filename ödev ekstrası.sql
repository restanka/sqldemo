
                                              --LÝKE KULLANIMI ÖRNEK


select * from Oyuncular where adi like '%nan'
select * from oyuncular where Soyadi like 'de%'
select * from Filmler where Adi like 'Görünmez Adam'
                                              --COUNT KULLANIMI ÖRNEK


select count (*) from Filmler
select count (*) from FilmlerOyuncular
select count (*) from Karakterler
select count(gisesi) as KayitSayisi from Filmler
                                             --ORDER BY KULLANIMI ÖRNEK


select * from Filmler order by Adi asc
select * from Tur order by Adi desc
select * from Filmler order by 2 asc 
                                             --GÖSTERÝM ÖRNEKLERÝ VE KÜÇÜK BÜYÜK FONKSÝYONEL ÖRNEKLER


select * from Filmler where Id = 3
select * from Filmler where Id <= 34 order by adi
select * from Tur where Id >=6 or Id <= 8  
select * from Tur where Id >=3 and Id <= 7
select * from Filmler where Adi in ('Görünmez adam')
                                              --DOGUM TARÝHÝ BÜYÜK VEYA KÜÇ OLAN ORNEKLER


select max(dogumtarihi) maksimumyas from Oyuncular
select min(dogumtarihi) from Oyuncular                     

                                               --ÝNNER JOÝN KULLANIMI ÖRNEKLEME


select Filmler.Adi,yapimyili,gisesi,Oyuncular.Adi from Filmler inner join Oyuncular on Oyuncular.Soyadi = Soyadi
select * from Oyuncular inner join Filmler on Oyuncular.Soyadi = Soyadi


                                                --ÝS NULL ÝS NOT NULL KULLANIM ÖRNEKLEME


select * from Tur where adi is not null
select * from Tur where adi is null

