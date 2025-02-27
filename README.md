# ![259317_copy_database_instance_ms_rds_icon](https://github.com/user-attachments/assets/2838182a-9d33-48eb-abce-516dfa76ffcf) Sorgularla Adım Adım SQL Veri Tabanı Programlama

👋 Merhabalar, oluşturmuş olduğum bu repo, Udemy'de Murat Yücedağ tarafından verilen Sorgularla Adım Adım SQL Veri Tabanı Programlama adlı kursta yapmış olduğum sorguları içermektedir. Bu eğitimde SQL veri tabanı ile tablolar oluşturma, DDL ve DML komutlarından Job konusuna kadar anlatılmaktadır.
<br><hr>

# 🖥️ Bölüm 1 - Veri Tabanı ve Tablolar

![image](https://github.com/user-attachments/assets/bbae2efa-2627-4cff-ba81-b9ac503bfa67)
<br>
Microsoft SQL Server'i açtığımızda karşımıza güncel haliyle bu şekilde çıkacaktır. Daha eski sürümlerde sadece Server kısmında yer alan ilk üç kısım gösterilecektir. Server name kısmı bizim bilgisayarımıza vermiş olduğumuz sunucunun ismidir. Authentication kısmı ise yetkilendirme kısmıdır. Burada Windows Authentication kısmında Microsoft SQL Server üzerinde sadece Windows Login’leri ile Microsoft SQL Server’a erişilebilir.<br><br>
SQL Server Authentication ise Microsoft SQL Server üzerinde hem Windows authentication hem de SQL Server authentication ile erişilebilirsiniz. Microsoft SQL Server kurulurken default olarak Windows authentication mode’da kurulur. Microsoft SQL Server’ınızı dilerseniz kurulum esnasın da Mixed Mode ( SQL Server authentication and Windows authentication ) olarak yapılandırabilirsiniz. Tabiki burda Microsoft SQL Server 2022 kullanacağımız uygularımız ( Logo Tiger, Logo Bordro, Mikro, Eta, Nebim gibi ) için bir sa kullanıcısı için bir şifresi yapılandırabilirsiniz. Buradan Windows Authentication seçerek Connect diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/6bb82497-ad25-4f16-a4c4-df956428d8de)
<br>
SQL'e bağlandıktan sonra sol tarafta menüler karşımıza çıkmaktadır.<br><br>
📌 En üstte yer alan SERCAN/SQLEXPRESS kısmı burası bizim bağlanmış olduğumuz sunucunun ismidir.<br>
📌 En çok kullanacağımız kısım Databases olacaktır.<br>
📌 Veri tabanları verilerin depolandığı tabloları barındıran alanlardır.<br><br>

![image](https://github.com/user-attachments/assets/1ead31ba-5d13-414d-8c2c-11d1ccb45f90)
<br><br>
Databases klasörüne tıkladığımız zaman eğer daha önce herhangi bir veri tabanı oluşturmadıysanız burası sizde boş gözükecektir. Burada daha önceden yapmış olduğum veri tabanları yer almaktadır.<br>
<br><br>
![image](https://github.com/user-attachments/assets/518fbec7-fd64-497e-b1f8-137fbded3b5c)<br><br>
Yeni bir veri tabanı oluşturmak için Databases klasörüne sağ tıklayıp New Database diyoruz.<br><br>
![image](https://github.com/user-attachments/assets/d8dc48bc-69a5-4e0e-bbb6-ed2081150ec1)<br><br>
Karşımıza bu şekilde çıkmaktadır. Veri tabanı ismini belirlemek için yukarıda yer alan Database name kısmına yazıyoruz. Burada istediğiniz ismi yazabilirsiniz. Burada OgrenciNotDb adında bir veri tabanı oluşturuyoruz ve OK diyoruz.<br><br>
![image](https://github.com/user-attachments/assets/0f7fe6c1-c4c8-4a2a-9057-cfeca20add6f)<br><br>
Eğer veri tabanı karşınıza çıkmadıysa Databases kısmına sağ tıklayıp Refresh diyebilirsiniz.<br><br>
![image](https://github.com/user-attachments/assets/2567c853-2476-4ead-8968-f3dd41b27103)<br><br>
Gördüğünüz üzere veri tabanına ait birçok klasörler yer almaktadır. Bizi burada en çok ilgilendiren kısım Tables kısmıdır. Bu kısımda tablolarımızı oluşturacağız.<br><br>
![image](https://github.com/user-attachments/assets/5eebf0a2-1e7c-4495-b653-a76389bb7047)<br><br>
Tablo oluşturmak için ilgili veri tabanına ait olan Tables kısmına sağ tıklayıp Add kısmından New Table diyoruz.<br><br>
![image](https://github.com/user-attachments/assets/a7c8a444-a592-44c4-818a-00f0d7c3efed)<br><br>
Karşımıza boş bir pencere çıkacaktır. Tablolarımızı buradan oluşturacağız.<br><br>

Burada ilk olarak her bir tablonun başına bir ID değerini belirlememiz gerekmektedir. ID o değerin kimlik numarası anlamına gelir. ID değeri otomatik olarak atanan değerdir. Sütunları eklemeden önce veri tiplerine bir bakalım.<br><br>

## 📌 1. SQL Veri Tipleri Nelerdir?
SQL’de veri tipleri 3 ana gruba ayrılır:<br><br>
![image](https://github.com/user-attachments/assets/288d0fbd-74a5-4ff9-ad6c-399e2d082bb1)
<br>
### ✅ 1.1 Sayısal (Numeric) Veri Tipleri
Sayılarla işlem yapmak için kullanılan veri tipleridir.<br><br>
![image](https://github.com/user-attachments/assets/26e9ea71-cd5e-4dd7-93f8-6cb6f80599e5)
<br>
### ⚙️ Örnek Kullanım
CREATE TABLE Musteriler (<br>
    MusteriID INT PRIMARY KEY,<br>
    Yas TINYINT,<br>
    Maas DECIMAL(10,2)  -- 10 basamaklı, 2 ondalık<br>
);<br><br>
### ✅ 1.2 Metinsel (String) Veri Tipleri
Metin verileri için kullanılan veri tipleridir.<br><br>
![image](https://github.com/user-attachments/assets/304af2f3-dc81-4d91-94ca-08c738344c36)
<br>
### ⚙️ Örnek Kullanım
CREATE TABLE Urunler (<br>
    UrunID INT PRIMARY KEY,<br>
    UrunAdi VARCHAR(100),<br>
    Aciklama TEXT<br>
);<br>
<br>
💯 CHAR(10) → "KİTAP " (Boşluk bırakır)
💯 VARCHAR(10) → "KİTAP" (Boşluk bırakmaz)

### ✅ 1.3 Tarih ve Zaman (Date/Time) Veri Tipleri
Tarih ve saat bilgilerini saklamak için kullanılır.<br><br>
![image](https://github.com/user-attachments/assets/45cf71c6-9c13-4a6a-bc38-04e3214d2ce1)
<br>
CREATE TABLE Siparisler (<br>
    SiparisID INT PRIMARY KEY,<br>
    SiparisTarihi DATETIME,<br>
    TeslimTarihi DATE<br>
);<br><br>

## 📌 2. Diğer Özel Veri Tipleri
![image](https://github.com/user-attachments/assets/bb6bb1aa-5b79-4a09-8616-e884f9b529d3)
<br>
### ⚙️ Örnek Kullanım
CREATE TABLE Loglar (<br>
    LogID INT PRIMARY KEY,<br>
    LogDetay JSON<br>
);<br><br>

Şimdi tablomuzu oluşturalım.<br><br>
![image](https://github.com/user-attachments/assets/f9688140-4e9f-4988-95ff-a3680e5d456f)<br><br>
Burada öğrenciye ait 6 tane sütun belirledik. İlk kısım ID değerini, daha sonra ad, soyad gibi değerlerini belirledik. Sağ tarafta yer alan Allow Nulls kısmı başlangıçta seçili olarak gelecektir, yani "Boş Geçilebilir" anlamına gelmektedir. Burada varchar değeri metinsel ifadeyi temsil eder. Buradaki varchar'dan sonra gelen değerler maksimum o kadar karaktere sahip olduğunu gösterir. Burada varchar(20) yerine istediğiniz değeri yazabilirsiniz.<br><br>
![image](https://github.com/user-attachments/assets/ee715b4b-2348-48be-95d7-97cd28edab9c)<br><br>
Tabloyu kaydedeceğimiz sırada karşımıza bir pencere çıkmaktadır. Burada kaydedeceğimiz tablonun ismini belirlememiz gerekir. İsmini TBLOGRENCILER olarak belirledik.<br><br>
![image](https://github.com/user-attachments/assets/94912862-947b-4da1-97bb-e624ab0100c3)<br><br>
Tabloyu kaydettikten sonra Tables kısmından tablomuzu görebiliriz. Eğer tablo çıkmazsa Tables kısmına sağ tıklayıp Refresh diyebilirsiniz.<br><br>

‼️<strong>SQL'de tabloyu ilk kaydettiğiniz andan itibaren eğerki tablo üzerinde bir değişiklik yapacaksak izlemeniz gereken adımlar şunlardır;</strong><br><br>

![image](https://github.com/user-attachments/assets/65ab4be5-1ccb-4f96-b0ff-50c108406c29)<br><br>
SQL'in üst kısmında Tools menüsü yer almaktadır. Tools'a tıklayarak Options diyoruz.<br><br>
![image](https://github.com/user-attachments/assets/94f192be-2309-41ef-8de1-55be76660079)<br><br>
Sol tarafta yer alan menülerden "Designers" kısmını seçtikten sonra işaretlemiş olduğum kısım sizde seçili olarak gelecektir. Bu seçeneği kaldırmazsanız SQL'de kaydettiğiniz tabloda bir daha değişiklik yapmanıza izin vermeyecektir. Bunun için buradaki seçili işareti kaldırın. Kaldırdıktan sonra artık diğer tüm tablolarda değişiklik yapabileceksiniz.<br><br>

Tablomuza geri dönerek bir değişiklik yapacağız. ID değerinin otomatik artan olacağını söylemiştik. Biz burada ilk olarak otomatik artan olarak belirlemedik. Şimdi biz ID değerini elle girmeden her bir veri ekledikten sonra otomatik olarak değer atayacaktır. OGRID sütununa tıkladıktan sonra yapmamız gereken işlemler şu şekildedir;<br><br>

![image](https://github.com/user-attachments/assets/01331af4-3b49-4c72-9019-bd21e17979f1)<br><br>
Aşağıda yer alan Identity Specification'a çift tıklıyoruz. Ardından (Is Identity) kısmını Yes yapıyoruz ve tabloyu tekrardan kaydediyoruz. Artık ID kısmı boş geçilemeyecektir.<br><br>

Tabloyu oluşturduktan sonra artık örnek veri girişlerimizi yapalım.<br><br>

![image](https://github.com/user-attachments/assets/d3cb2bda-fbe7-4d17-b593-93ae35350d81)<br><br>
Veri girişi yapmak için ilgili tablomuza sağ tıklayıp Edit Top 200 Rows diyoruz. Bunun anlamı üstteki 200 satırı düzenle demektir.<br><br>

![image](https://github.com/user-attachments/assets/53ac4462-eb18-4c32-b013-514c98eddd78)<br><br>
Karşımıza bu şekilde çıkacaktır. Verilerimizi bu sayfadan ekliyor olacağız. 200 tane kayıt ekledikten sonra yeni bir sayfaya atayacaktır. Bu ayarı değiştirmek için yapılacak adımlar;<br><br>

![image](https://github.com/user-attachments/assets/f1cc5ffa-492d-4a00-b202-c520c2ef64e1)<br><br>
Tools kısmından Option'a gelinir.<br><br>
![image](https://github.com/user-attachments/assets/0b010776-f0f5-4b44-8446-2cf97e76d355)<br><br>
Sol tarafta yer alan SQL Server Object Explorer kısmına tıkladıktan sonra kırmızı işaretle seçtiğim alandan değiştirebilirsiniz.<br><br>
![image](https://github.com/user-attachments/assets/6713dcfa-a63b-4420-873f-b5a2d9ef0be5)<br><br>
İlk verimizi eklemiş olduk. Verileri sıra sıra eklemek için direkt TAB tuşuna basabilirsiniz. Veri ekleme sırasında aşağıya indiğimiz an veri otomatik olarak kaydedilecektir.<br><br>

<hr>

# 🖥️ Bölüm 2 - DDL ve DML Komutları
SQL'de DML (Data Manipulation Language) ve DDL (Data Definition Language) komutları, veritabanı yönetimi açısından farklı amaçlarla kullanılır.<br><br>

## 📌 1. DML (Data Manipulation Language) - Veri Manipülasyon Dili
DML komutları, veritabanındaki verilere ekleme, güncelleme, silme ve sorgulama işlemleri yapmamızı sağlar.<br><br>
### ✅ Temel DML Komutları:
![image](https://github.com/user-attachments/assets/721ece73-284c-4c6b-966d-e6926a97e110)<br><br>
## 📌 2. DDL (Data Definition Language) - Veri Tanımlama Dili
DDL komutları, veritabanındaki tabloları ve diğer yapıları oluşturmak, değiştirmek ve silmek için kullanılır.<br><br>
### ✅ Temel DDL Komutları:
![image](https://github.com/user-attachments/assets/fafde734-8473-4241-b8c9-0348d1879db8)<br><br>
###  DML vs. DDL Karşılaştırması
![image](https://github.com/user-attachments/assets/09911ce5-63ad-4764-af6f-98d7b3364e8b)<br><br>
DML, veri üzerinde işlem yaparken, DDL ise verinin nasıl saklandığını belirler.<br>
Bir SQL projesinde her iki tür de aktif olarak kullanılır. DDL ile veri yapısını oluşturup yönetirken, DML ile veriler üzerinde işlemler gerçekleştiririz.<br><br>

![image](https://github.com/user-attachments/assets/bd08b308-9d17-4dc7-a022-dbf111464add)<br><br>
SQL üzerinden yeni bir sorgu oluşturmak için yukarıda yer alan New Query sekmesine tıklıyoruz.<br><br>
![image](https://github.com/user-attachments/assets/6ace4451-0a7a-4256-929e-b166bd32ee89)<br><br>
Karşımıza boş bir sorgu gelmektedir. Sol üst köşede işaretlediğim alan eğer veri tabanınız burada çıkmazsa buradaki sekmeye tıklayarak ilgili veri tabanınızı seçmeniz gerekmektedir.<br><br>

📍 Şimdi bir tane tablo oluşturalım.<br><br>
CREATE TABLE TBLDERSLER<br>
(<br>
DERSID tinyint,<br>
DERSAD varchar(20)<br>
)<br><br>
Tablomuzu bu şekilde oluşturduktan sonra F5 tuşuna basıyoruz.<br><br>
![image](https://github.com/user-attachments/assets/99da835d-656d-4c8e-9559-40ec7f345a86)<br><br>
Sorguyu çalıştırdıktan sonra herhangi bir hata yoksa aşağıda yer alan "Commands completed successfully" adında bir mesaj gelecektir.<br><br>
💯 Yorum satırına almak için -- işareti kullanılır.<br><br>

📍 TBLDERSLER tablosuna yeni bir sütun eklemek için;<br><br>
ALTER TABLE TBLDERSLER<br>
ADD KONTENJAN smallint<br><br>

📍 TBLDERSLER tablosundan sütun silmek için;<br><br>
ALTER TABLE TBLDERSLER<br>
DROP COLUMN KONTENJAN<br><br>

✅ DML komutlarından SELECT ile başlayalım.<br><br>
SELECT * FROM TBLOGRENCILER<br><br>
Burada SELECT kısmı verilerin sorgulanacağı anlamına gelmektedir. Burada * işareti ise sütunların tümünün seçileceği anlamına gelir. Burada TBLOGRENCILER tablosuna ait bütün verileri listelemek istiyoruz.<br><br>
![image](https://github.com/user-attachments/assets/2d818ed9-4ce0-4367-b0b2-44b86fee847e)<br><br>
Sorguyu çalıştırdığımız zaman karşımıza bu şekilde çıkacaktır.<br>

📍 Eğer sadece ad ve soyad seçeceksek<br>
SELECT OGRAD,OGRSOYAD FROM OGRENCILER<br><br>

📍 Eğer şartlı seçim uygularsak, örneğin; TBLOGRENCILER tablosundaki Ali ismindeki öğrencileri listeleyeceksek;<br>
SELECT * FROM TBLOGRENCILER WHERE OGRAD='Ali'<br><br>

![image](https://github.com/user-attachments/assets/a724623a-bfc6-496e-b222-d01cfbf08e80)<br><br>
Oluşturduğumuz yeni tablonun ismi TBLNOTLAR olacaktır.<br><br>

✅ DML komutlarından INSERT ile devam edelim.<br><br>
📍 Kullanımı şu şekildedir;<br>
INSERT INTO TabloAdı (Sütun1,Sütun2,Sütun3...) VALUES (Değer1,Değer2,Değer3...)<br><br>

Örnek veri girişi;<br>
INSERT INTO TBLOGRENCILER (OGRAD,OGRSOYAD,OGRSEHIR) VALUES ('Sercan','Kurban','İstanbul')<br><br>
![image](https://github.com/user-attachments/assets/50fce404-5e0c-4209-a055-b4e81433f053)<br><br>
Veri girişinde herhangi bir sıkıntı çıkmazsa karşımıza bu şekilde bir mesaj verecektir. Tekrardan SELECT * FROM TBLOGRENCILER sorgusunu yazıyoruz.<br><br>
![image](https://github.com/user-attachments/assets/84e0f3a6-e28a-4d23-9bb1-be9e2b63ba37)<br><br>
Gördüğünüz üzere cinsiyet ve kulüp bölümünde herhangi bir veri girmediğimiz için bize NULL değeri dönderdi.<br><br>

✅ DML komutlarından DELETE ile devam edelim.<br><br>
📍 Kullanımı şu şekildedir;<br>
DELETE FROM TabloAdı WHERE Sütun<br><br>

‼️ <b>DİKKAT! Eğer sadece DELETE FROM TabloAdı yazarsanız, herhangi bir şart belirlenmezse o tabloya ait bütün verileri siler!</b><br><br>

📍 TBLDERSLER tablosunda ID'ye göre şartlı silme işlemi şu şekildedir;<br>
DELETE FROM TBLDERSLER WHERE DERSID=1<br><br>

‼️ TRUNCATE KOMUTU<br><br>
TRUNCATE komutu tablonun içerisindeki bütün verileri siler ve yeni bir veri eklediğimiz zaman ID değerini tekrar 1'den başlatır. Bir çeşit format gibi düşünebilirsiniz.<br>
TRUNCATE TABLE TabloAdı<br><br>

✅ DML komutlarından UPDATE ile devam edelim.<br><br>
‼️ <b>DİKKAT! Eğer sadece UPDATE TabloAdı SET Sütun=YeniDeğer yazarsanız, herhangi bir şart belirlenmezse o tabloya ait bütün verileri günceller!</b><br><br>
📍 TBLOGRENCILER tablosunda ID'ye göre şartlı güncelleme işlemi şu şekildedir;<br>
UPDATE TBLOGRENCILER SET OGRCINSIYET='Kız' WHERE OGRID=2<br><br>

<hr>

# 🖥️ Bölüm 3 - Gruplandırmalar ve Operatörler
Bu bölümde;<br><br>
SUM, COUNT, MIN, MAX, AVG, GROUP BY, HAVING, LIKE, DISTINCT, ORDER BY, LIKE, TOP, PERCENT, IN, NOT IN ve BETWEEN konularına yer verilmiştir.<br><br>

## ✅ 1. SUM()
Belirtilen sütundaki sayısal değerlerin toplamını hesaplar.<br>
SELECT SUM(SINAV1) FROM TBLNOTLAR<br><br>

## ✅ 2. COUNT()
Kaç tane satır olduğunu sayar.<br>
SELECT COUNT(*) FROM TBLOGRENCILER<br><br>

## ✅ 3. MIN()
Belirtilen sütundaki en küçük değeri döndürür.<br>
SELECT MIN(SINAV1),MIN(SINAV2),MIN(SINAV3) FROM TBLNOTLAR<br><br>

## ✅ 4. MAX()
Belirtilen sütundaki en büyük değeri döndürür.<br>
SELECT MAX(SINAV1),MAX(SINAV2),MAX(SINAV3) FROM TBLNOTLAR<br><br>

## ✅ 5. AVG()
Belirtilen sütundaki sayıların ortalamasını hesaplar.<br>
SELECT AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR<br><br>

## ✅ 6. GROUP BY
Belirli bir sütuna göre gruplama yapar ve genellikle agregat fonksiyonlarla (SUM, COUNT, AVG vb.) kullanılır.<br><br>
📍 TBLOGRENCILER tablosunda şehir sayısına göre gruplandırma yapan sorgu<br>
SELECT OGRSEHIR,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRSEHIR

## ✅ 7. HAVING
GROUP BY ile kullanılan filtreleme koşuludur. WHERE gibi çalışır ama agregat fonksiyonlarla kullanılır.<br><br>
📍 TBLOGRENCILER tablosunda sadece 2 tane öğrencinin bulunduğu şehirleri getiren sorgu<br>
SELECT OGRSEHIR,COUNT(*) AS 'SAYI' FROM TBLOGRENCILER GROUP BY OGRSEHIR HAVING COUNT(*)=2<br><br>

## ✅ 8. LIKE
Metinsel ifadeleri belirli bir desene göre arar. % ve _ karakterleri joker olarak kullanılır.<br><br>
📍 TBLOGRENCILER tablosunda öğrencilerin adının içerisinde A harfi olanları getiren sorgu<br>
SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%a%'<br><br>

## ✅ 9. DISTINCT
Tekrar eden değerleri kaldırarak benzersiz kayıtları döndürür.<br>
SELECT DISTINCT OGRSEHIR FROM TBLOGRENCILER<br><br>

## ✅ 10. ORDER BY
Sonuçları belirli bir sütuna göre sıralar.<br><br>
📍 TBLOGRENCILER tablosunda öğrencilerin adını alfabetik sıraya göre A-Z gösteren sorgu<br>
SELECT * FROM TBLOGRENCILER ORDER BY OGRAD ASC<br><br>

## ✅ 11. TOP
Sorgu sonucundan belirli bir sayıda satır getirir (SQL Server için).<br><br>
📍 TBLOGRENCILER tablosunda üstten 3 kaydı getiren sorgu<br>
SELECT TOP 3 * FROM TBLOGRENCILER<br><br>

## ✅ 12. PERCENT
Belirli bir yüzdelik dilimdeki verileri getirir (SQL Server için).<br><br>
📍 TBLOGRENCILER tablosunda bulunan kayıtların yüzde 60'ını getiren sorgu<br>
SELECT TOP 60 PERCENT * FROM TBLOGRENCILER<br><br>

## ✅ 13. IN
Belirtilen değerler kümesinde olanları getirir.<br><br>
📍 TBLOGRENCILER tablosunda yer alan şehirlerden İzmir, Ankara veya Edirne olanları getiren sorgu<br>
SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR IN('İzmir','Ankara','Edirne')<br><br>

## ✅ 14. NOT IN
Belirtilen değerler kümesinde olmayanları getirir.<br><br>
📍 TBLNOTLAR tablosunda yer alan SINAV1 değerlerden 70,75,80,85,90 değerlerini getirmeyen sorgu<br>
SELECT * FROM TBLNOTLAR WHERE SINAV1 NOT IN(70,75,80,85,90)<br><br>

## ✅ 15. BETWEEN
Belirli bir aralıkta olan değerleri getirir.<br><br>
📍 TBLNOTLAR tablosunda yer alan ortalamaların 74 ile 100 arasında olanları getiren sorgu<br>
SELECT * FROM TBLNOTLAR WHERE ORTALAMA BETWEEN 74 AND 100<br><br>

<hr>

# 🖥️ Bölüm 4 - İlişkili Tablolar ve Alt Sorgular
SQL'de ilişkili tablolar, birleştirme işlemleri (JOIN) ve alt sorgular (subquery) veritabanı yönetiminde oldukça önemli konulardır. Bunları detaylı şekilde açıklayalım:<br><br>

## 📌 1. İlişkili Tablolar
Veritabanında tablolar genellikle birbiriyle ilişkili olur. En yaygın ilişki türleri şunlardır:<br><br>

✅ <b>1. Bire Bir (One-to-One) →</b> Her iki tabloda da benzersiz bir şekilde eşleşen kayıtlar vardır.<br>
✅ <b>2. Bire Çok (One-to-Many) →</b> Bir tabloda bir kayıt, diğer tabloda birden çok kayıtla eşleşir.<br>
✅ <b>3. Çoka Çok (Many-to-Many) →</b> İki tablo arasında doğrudan ilişki kurulamaz, ara bir tablo kullanılır.<br><br>

<b>İlişkili Tablolar Ne İşe Yarar?</b><br><br>
📍 1. Veri karmaşasını önlüyor.<br>
📍 2. Veri tekrarını önlüyor.<br>
📍 3. Bellek performansı sağlıyor.<br><br>

💯 <b>Burada en çok bire çok ilişki kuracağız.</b><br><br>

📍 İlk olarak yeni bir tablo oluşturacağız.<br><br>
![image](https://github.com/user-attachments/assets/62077aa5-a3f3-4784-b93f-d77fbcfccf9b)<br>
Oluşturacağımız tablonun ismini TBLKULUPLER olarak belirledik. Burada 2 tane sütun ekledik. KULUPID değerini otomatik artan olarak belirledik ve KULUPAD sütununun varchar değerini 50 karakter olarak belirledik.<br><br>
![image](https://github.com/user-attachments/assets/739e01a9-26fd-49c0-a593-4ea58b4354c7)<br>
TBLKULUPLER tablosuna ait veri girişlerimizi yaptık.<br><br>

![image](https://github.com/user-attachments/assets/f8bc6186-6449-4afd-b8ff-9047ec43b87e)<br><br>
Buradaki tüm kulüplerin değerini sayı olarak belirledik, çünkü TBLKULUPLER tablosunda yer alan değerlere karşılık TBLOGRENCILER tablosunda yer alan OGRKULUP ile birleştirme işlemi uygulayacağız.<br><br>
![image](https://github.com/user-attachments/assets/ff1f83f3-815f-48bd-84c9-acde66934f56)<br>
Burada gördüğünüz gibi OGRKULUP sütununda yer alan değerler artık sayı ile belirlendi. Bunun için TBLOGRENCILER tablosuna gelip OGRKULUP sütununda yer alan veri tipini değiştiriyoruz.<br><br>
![image](https://github.com/user-attachments/assets/3e9eb241-ab56-41ee-b0e6-42ea653ea7ee)<br>
‼️ Buranın veri tipi önceden varchar(50) iken şimdi tinyint olarak belirledik, çünkü TBLKULUPLER tablosunda yer alan KULUPID sütunun veri tipi tinyint olduğu için burada da <ins>tinyint yapmamız gerekmektedir</ins>, aksi takdirde hata verecektir.<br><br>

‼️ <strong>DİKKAT! Herhangi iki tablo arasında ilişki kurabilmek için o tabloların birer <ins>"Birincil Anahtar (Primary Key)"</ins>'ı olması gerekir. Bunun için yapmamız gereken adım;</strong><br><br>

![image](https://github.com/user-attachments/assets/2b212983-a904-4feb-9bc6-250dc2a60346)<br>
TBLKULUPLER tablosuna gidip KULUPID sütununa sağ tıklayıp <strong><ins>"Set Primary Key"</ins></strong> diyoruz.<br>
Aynısını bu kez TBLOGRENCILER tablosuna gidip OGRID sütununa sağ tıklayıp <strong><ins>"Set Primary Key"</ins></strong> diyoruz.<br><br>

✅ Artık ilişkisel diyagram oluşturabiliriz. Bunun için yapılması gereken adımlar;<br><br>
![image](https://github.com/user-attachments/assets/87e4b9c3-5cb3-4095-89e3-b263412b452a)<br>
İlgili veri tabanına ait olan Database Diagrams klasörüne sağ tıklayıp <strong><ins>New Database Diagram</ins></strong> diyoruz.<br>
![image](https://github.com/user-attachments/assets/e29a5049-a677-4a47-8716-0d939d295272)<br>
Çıkan uyarıya Yes diyoruz.<br>
![image](https://github.com/user-attachments/assets/60007e29-d3c8-41cf-a751-5cd365914d78)<br>
Gördüğünüz gibi tablolar karşımıza çıkmaktadır. Bunun için üzerinde yapacağımız ilişkili tablolar hangisiyse onları seçiyoruz (veya hepsini seçebilirsiniz).<br>
📍 Biz burada TBLOGRENCILER ve TBLKULUPLER tablosunu alıyor olacağız. Bunun için bu iki tabloya gelip Add diyoruz. Tabloları seçtikten sonra Close diyoruz.<br>
📍 Bu tabloları seçmemizin sebebi TBLOGRENCILER tablosunda yer alan OGRKULUP ile TBLKULUPLER tablosunda yer alan KULUPID ile ilişkilendiriyor olacağız.<br><br>
![image](https://github.com/user-attachments/assets/ee47aaa8-9317-41f1-9fcc-658b382fb515)<br>
📍 Diyagramımızı bu şekilde oluşturduk. Şimdi bunları ilişkilendiriyor olacağız.<br>
📍 TBLKULUPLER tablosunda yer alan KULUPID sütununa basılı tutup TBLOGRENCILER tablosunda yer alan OGRKULUP sütununa sürüklüyoruz.<br>
![image](https://github.com/user-attachments/assets/0ec021de-ca97-4f6d-9bec-3921e55c83a8)<br>
📍 Çıkan ekrana OK diyoruz.<br>
![image](https://github.com/user-attachments/assets/0bffc53a-312e-430f-b925-95bc46519e09)<br>
📍 Çıkan ekrana bir kez daha OK diyoruz.<br>
![image](https://github.com/user-attachments/assets/cb1ecc3c-6a22-4c2b-a02c-56e3029b09a1)<br>
📍 Gördüğünüz üzere KULUPID ile OGRKULUP arasında bire çok ilişki sağlandı. Diyagramı kaydediyoruz.<br>
![image](https://github.com/user-attachments/assets/32fd974d-0eba-45cc-b398-34efc4de25ac)<br>
📍 Diyagramın ismi bu şekilde kalabilir veya değiştirebilirsiniz. Diagram_0 isminde kaydediyoruz.<br><br>

‼️ TBLOGRENCILER tablosuna yeni bir öğrenci ekleyelim. Kulüpler tablosunda 5 tane kulübümüz vardı, bunlar ID'ye göre sıralı halde gelmekteydi. Ancak biz OGRKULUP değerini 6 yaptığımız zaman ne olacak bakalım.<br><br>
![image](https://github.com/user-attachments/assets/9d584eaa-cf86-4266-946c-cff7dc394628)<br>
💯 Buradaki hata, TBLKULUPLER tablosunda ID değerleri sırasıyla 5 tane olmasına rağmen, biz burada OGRKULUP sütununa 6 diye girdiğimiz zaman, o değer olmadığı için bize direkt hata döndürdü.<br><br>

✅ TBLKULUPLER ile TBLOGRENCILER arasındaki ilişki oluşturuldu. Şimdi yeni bir ilişki oluşturmak için yapmamız gereken adımlar;<br><br>

![image](https://github.com/user-attachments/assets/f27ce0db-4483-4a64-8300-b3c8167ab9e4)<br>
Diyagramın herhangi bir alanına sağ tıklayarak Add Table diyoruz ve kalan tablolarımızı ekliyoruz..<br>
Burada yapacağımız ilişki TBLDERSLER tablosunda yer alan DERSID ile TBLNOTLAR tablosunda yer alan DERS sütunuyla bire çok ilişki kuracağız. Bunların da ID değerler Birincil Anahtar olmadığı için bunlara da Birincil Anahtar değerlerini verelim.<br><br>

![image](https://github.com/user-attachments/assets/f5232fc5-7709-4b02-8fc8-e74f9a5c8b31)<br>
Burada da aynı şekilde DERSID sütununa sağ tıklayarak Set Primary Key verebiliriz. Aynısını TBLNOTLAR içerisinde yer alan NOTID sütununa da Birincil Anahtar verelim ve ilişkili diyagramımızı oluşturalım.<br><br>
<b>Oluşturulacak İlişkili Diyagramlar;</b><br>
✅ TBLOGRENCILER tablosunda yer alan OGRID ile TBLNOTLAR tablosunda yer alan OGRENCI sütunu bire çok ilişkilidir.<br>
✅ TBLDERSLER tablosunda yer alan DERSID ile TBLNOTLAR tablosunda yer alan DERS sütunu bire çok ilişkilidir.<br><br>

![image](https://github.com/user-attachments/assets/b2b11a12-936e-4523-848e-cbff2c2d3518)<br>
Diyagramlarımızı tamamladıktan sonra kaydediyoruz, ancak buradaki diyagramlar dağınık halde görünmektedir. Diyagramları toparlamak için herhangi alana sağ tıklayıp <b>"Arrange Tables"</b> diyoruz.<br>
![image](https://github.com/user-attachments/assets/687a56cb-4f0b-4db8-977a-d5985ef0fc66)<br>
Diyagramımız artık düzenli hale gelecektir. Tekrardan kaydediyoruz.<br>

## 📌 2. JOIN (Birleştirme İşlemi)
Tablolar arasında ilişkili verileri çekmek için JOIN kullanılır.<br><br>
### JOIN Türleri
![image](https://github.com/user-attachments/assets/ba85e696-0e7a-493d-8e1d-87d5fea5dbf1)<br>

Burada birleştirme işlemlerinden INNER JOIN komutunu kullanacağız.<br><br>
📍 Örnek: TBLNOTLAR VE TBLDERSLER tablolarında yer alan NOTID değerine göre DERSAD sütununda yer alan derslerin adını getiren sorgu<br><br>
SELECT NOTID,DERSAD FROM TBLNOTLAR<br>
INNER JOIN TBLDERSLER<br>
ON TBLNOTLAR.DERS = TBLDERSLER.DERSID<br>
Burada ilk olarak TBLNOTLAR tablosunda yer alan NOTID ile TBLDERSLER tablosunda yer alan DERSAD sütunlarını ekranda göstermeye çalışacağız, ancak yazacağımız sorgu ilk başta hata verecektir. Bunun için yapmamız gereken birleştirme komutu INNER JOIN komutudur. INNER JOIN dedikten sonra birleştirmemiz gereken tablo hangisiyse onu yazıyoruz. Burada birleştireceğimiz tablo TBLDERSLER tablosudur. Daha sonra ON diyoruz, ardından TBLNOTLAR tablosunda yer alan DERS sütunu ile TBLDERSLER tablosunda yer alan DERSID sütunlarını ekleyerek birleştirme işlemini tamamlıyoruz.<br>
![image](https://github.com/user-attachments/assets/092497d9-89a2-44ed-8271-a17671335845)<br>
Ekran çıktısı bu şekilde olacaktır. Dilerseniz TBLNOTLAR tablosunda yer alan SINAV1,SINAV2,SINAV3,ORTALAMA,DURUM gibi sütunları da getirebilirsiniz.<br><br>

## 📌 3. Alt Sorgular (Subquery)
Bir SQL sorgusu içinde başka bir SQL sorgusu kullanmaktır. WHERE, SELECT, FROM ve HAVING gibi ifadelerde kullanılabilir.<br><br>
📍 Örnek: TBLDERSLER tablosunda yer alan ismi 'Matematik' olan derse ait not bilgilerini görüntüleme<br>
SELECT * FROM TBLNOTLAR WHERE DERS=(SELECT DERSID FROM TBLDERSLER WHERE DERSAD='Matematik')<br>

### 📌 Özet
✅ İlişkili tablolar sayesinde veri tekrarını önleriz.<br>
✅ JOIN işlemi ile ilişkili verileri birleştirerek raporlar oluşturabiliriz.<br>
✅ Alt sorgular (Subquery) ile daha karmaşık sorgular yazabiliriz.<br><br>

<hr>

# 🖥️ Bölüm 5 - Birleştirme İşlemleri
SQL'de birleştirme (JOIN) işlemleri, iki veya daha fazla tabloyu ortak bir sütun üzerinden ilişkilendirerek tek bir veri kümesi olarak getirmek için kullanılır.<br><br>

📌 JOIN Türleri<br>
SQL'de kullanılan temel birleştirme türleri şunlardır:<br><br>

### ✅ INNER JOIN
İki tabloda da eşleşen kayıtları getirir.<br>
Eşleşmeyen kayıtlar dahil edilmez.<br><br>

📍 Örnek: Öğrenciler ile TBLNOTLAR tablosunda olan bütün kayıtları getiren sorgu<br>
SELECT * FROM TBLNOTLAR<br>
INNER JOIN TBLOGRENCILER<br>
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI<br><br>

### ✅  LEFT (OUTER) JOIN
Sol (birinci) tablodaki tüm kayıtları ve sağ (ikinci) tablodaki eşleşen kayıtları getirir.<br>
Eşleşme yoksa sağ tablo sütunları NULL olur.<br><br>

📍 Örnek: Öğrenciler ile TBLNOTLAR tablosunda olan bütün kayıtları getiren ancak birleştirme işlemini TBLNOTLAR tablosuna göre yapan sorgu
SELECT * FROM TBLNOTLAR<br>
LEFT JOIN TBLOGRENCILER<br>
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI<br><br>

### ✅  RIGHT (OUTER) JOIN
Sağ (ikinci) tablodaki tüm kayıtları ve sol (birinci) tablodaki eşleşen kayıtları getirir.<br>
Eşleşme yoksa sol tablo sütunları NULL olur.<br><br>

📍 Örnek: Öğrenciler ile TBLNOTLAR tablosunda olan bütün kayıtları getiren ancak birleştirme işlemini TBLOGRENCILER tablosuna göre yapan sorgu<br>
SELECT * FROM TBLNOTLAR<br>
RIGHT JOIN TBLOGRENCILER<br>
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI<br><br>

### ✅  FULL (OUTER) JOIN
Her iki tabloda da olan tüm kayıtları getirir.<br>
Eşleşme yoksa NULL değer döndürülür.<br><br>

📍 Örnek: Öğrenciler ile TBLNOTLAR tablosunda hem TBLOGRENCILER hem de TBLNOTLAR tablosunda olan bütün kayıtları getiren sorgu<br>
SELECT * FROM TBLNOTLAR<br>
FULL JOIN TBLOGRENCILER<br>
ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI<br><br>

### ✅ UNION
UNION, iki veya daha fazla SELECT sorgusunun sonuçlarını birleştirmek için kullanılır.<br><br>
<b>Temel Kurallar:</b><br><br>
✅ Tüm sorguların aynı sayıda sütun döndürmesi gerekir.<br>
✅ Sütun veri türleri uyumlu olmalıdır.<br>
✅ Varsayılan olarak tekrar eden kayıtları (duplicate) kaldırır.<br>

📍 Örnek: TBLKULUPLER ile TBLDERSLER tablolarını birleştiren sorgu<br>
SELECT * FROM TBLKULUPLER UNION SELECT * FROM TBLDERSLER<br><br>

<hr>

# 🖥️ Bölüm 6 - Aritmetik Fonksiyonlar
SQL'de aritmetik fonksiyonlar, sayısal veriler üzerinde matematiksel işlemler yapmak için kullanılır.<br><br>
### 📝 SQL Aritmetik Fonksiyonlar
![image](https://github.com/user-attachments/assets/1fd5f3d7-00bf-43ee-9079-f90c0fb2bd2f)<br><br>
📍 Örnek: SELECT 20+4 AS 'TOPLAM', 20-4 AS 'FARK', 20*4 AS 'ÇARPIM', 20/4 AS 'BÖLÜM'<br><br>

### 📝 SQL Matematiksel Fonksiyonlar
![image](https://github.com/user-attachments/assets/c1de7793-0b1e-4d8d-91c1-18df63daa8dd)<br><br>
SELECT ABS(-85) AS 'MUTLAK'<br>
SELECT POWER(2,4) AS 'ÜS ALMA'<br><br>

### 📝 AVG() – Ortalama Hesaplama
AVG fonksiyonu, belirli bir sütundaki ortalama değeri hesaplar.<br>
📍 Örnek: SELECT SUM(SINAV1) FROM TBLNOTLAR WHERE OGRENCI=1<br><br>

### 📝 SUM() – Toplam Hesaplama
SUM fonksiyonu, belirli bir sütundaki tüm değerleri toplar.<br>
📍 Örnek: SELECT SUM(SINAV1) FROM TBLNOTLAR WHERE OGRENCI=1<br><br>

<hr>

# 🖥️ Bölüm 7 - Alfabetik Fonksiyonlar
SQL'de alfabetik (string/metin) fonksiyonlar, metinleri değiştirmek, birleştirmek, uzunluklarını hesaplamak ve belirli bölümlerini almak için kullanılır.<br><br>

## 📝 Temel Alfabetik Fonksiyonlar<br><br>
![image](https://github.com/user-attachments/assets/54701142-97c8-4da6-9a44-42ee395f7988)<br><br>

📍 Upper ve Lower Fonksiyon Örneği:<br>
SELECT UPPER(OGRAD) AS 'ÖĞRENCİ ADI', UPPER(OGRSOYAD) AS 'SOYAD',<br>
LOWER(OGRSEHIR) AS 'ŞEHİR' FROM TBLOGRENCILER<br><br>

📍 Substring Komutu Örneği:<br>
Kullanımı şu şekildedir: SUBSTRING(SÜTUN ADI, BAŞLANGIÇ DEĞERİ, KARAKTER UZUNLUK DEĞERİ)<br>
SELECT SUBSTRING(OGRAD,1,2) FROM TBLOGRENCILER<br><br>

📍 Left Right Komutu Örneği:<br>
--SELECT LEFT('MERHABA DÜNYA',9), RIGHT('MERHABA İSTANBUL',2)<br><br>

📍 Len Komutu Örneği:<br>
SELECT LEN('MERHABA')<br><br>

📍 LTrim, RTrim, Replace Komutları Örneği:<br><br>
Sol taraftaki boşluğu kaldıran komut<br>
SELECT LTRIM('			Korkma Sönmez Bu Şafaklarda Yüzen Al Sancak			')<br><br>

Sağ taraftaki boşluğu kaldıran komut<br>
SELECT RTRIM('			Korkma Sönmez Bu Şafaklarda Yüzen Al Sancak			')<br><br>

Replace komutu için parametreler aşağıdaki gibidir:<br><br>
✅ 1. Parametre Ana Kelime, Cümle<br>
✅ 2. Parametre Bulunacak Değer<br>
✅ 3. Parametre Yeni Değer<br>
SELECT REPLACE('Sercan Kurban','Kurban','K.Ban')<br><br>

📍 Charindex ve Reverse Komutları Örneği:<br><br>
Charindex komutu için parametreler aşağıdaki gibidir:<br><br>
✅ 1. Karakter Değeri<br>
✅ 2. Girilen Karakter Değerinin Kaçıncı Sırada Olduğunu Bulan Değer<br>
✅ 3. Kaçıncı Karakterden İtibaren Başla<br>
SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz', 20)<br><br>

Karakteri tersten yazdırma komutu<br>
SELECT REVERSE('Sercan')<br><br>

<hr>

# 🖥️ Bölüm 8 - Genel Tekrar
Bu bölümde DDL ve DML komutları kullanılarak genel tekrar yapılmıştır.<br><br>

## 📌 DDL Komutları
📍 Veri tabanı oluşturma<br>
CREATE DATABASE SatisVT<br><br>

📍 Veri tabanına erişme<br>
USE SatisVT<br><br>

📍 Örnek Tablo Oluşturma<br>
CREATE TABLE TBLKATEGORI<br>
(<br>
KATEGORIID tinyint identity(1,1) primary key,<br>
KATEGORIAD varchar(50)<br>
)<br><br>

Diyagramlarımızı oluşturalım. Bunun için SatisVT --> Database Diagrams klasörüne sağ tıklayıp New Database Diagram diyoruz ve bütün diyagramları alıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/ebbd9124-8802-4316-9473-494d6edcecdb)
<br>
Bire çok ilişkilerimizi uyguluyoruz.<br><br>
📍 TBLKATEGORI KATEGORIID --> TBLURUNLER KATEGORI<br>
📍 TBLURUNLER URUNID --> TBLHAREKET URUN<br>
📍 TBLMUSTERI MUSTERIID --> TBLHAREKET MUSTERI<br>
📍 TBLPERSONEL PERSONELID --> TBLHAREKET PERSONEL<br><br>

Veri ekleme işlemleri için<br><br>
📍 TBLKATEGORI için veri ekleme<br>
INSERT INTO TBLKATEGORI (KATEGORIAD) VALUES ('BİLGİSAYAR')<br><br>

📍 TBLURUNLER için veri ekleme<br>
INSERT INTO TBLURUNLER (URUNAD,URUNMARKA,KATEGORI,URUNALISFIYAT,URUNSATISFIYAT,URUNSTOK)<br>
VALUES ('BUZDOLABI','SIEMENS',2,4356,4588,10)<br><br>

Update Örnekleri<br><br>
UPDATE TBLURUNLER SET URUNAD='SU ISITICI' WHERE URUNAD='KETTLE'<br><br>

📍 Kategorinin ismi BİLGİSAYAR olan ürünlerin satış fiyatını 500 lira zam yapan sorgu<br>
UPDATE TBLURUNLER SET URUNSATISFIYAT += 500 WHERE KATEGORI = (SELECT KATEGORIID FROM TBLKATEGORI WHERE KATEGORIAD = 'BİLGİSAYAR') SELECT * FROM TBLURUNLER<br><br>

<hr>

# 🖥️ Bölüm 9 - Prosedürler
İlk olarak TBLHAREKET tablosuna birkaç adet veri girişi yapalım.<br><br>

![image](https://github.com/user-attachments/assets/5d075461-9401-4575-b65e-d7d7b2a11572)
<br>
Veri girişlerimizi yaptık. Şimdi prosedür uygulayacağız.<br><br>

Prosedür oluşturmak için CREATE PROCEDURE (ProsedürAdı) yazıyoruz ve ardından AS diyoruz. Bunları yazdıktan sonra yazacağımız sorguyu yazıp çalıştırıyoruz.<br><br>

📍 Örnek Prosedür Oluşturma: <br>
CREATE PROCEDURE HAREKETLER<br>
AS<br>
SELECT HAREKETID,URUNAD,MUSTERIAD + ' ' + MUSTERISOYAD AS 'AD SOYAD', PERSONELADSOYAD,ADET,TUTAR,TARIH FROM TBLHAREKET<br>
INNER JOIN TBLURUNLER ON TBLURUNLER.URUNID = TBLHAREKET.URUN<br>
INNER JOIN TBLMUSTERI ON TBLMUSTERI.MUSTERIID = TBLHAREKET.MUSTERI<br>
INNER JOIN TBLPERSONEL ON TBLPERSONEL.PERSONELID = TBLHAREKET.PERSONEL<br><br>

![image](https://github.com/user-attachments/assets/3aae6e5b-a21b-4cfb-80b1-16472632cfbf)
<br>
Prosedürümüzü oluşturduktan sonra ilgili veri tabanımıza gelip Programmability klasörüne geliyoruz, ardından Stored Procedures klasörüne geldikten sonra prosedürümüz burada yer alacaktır.<br>

![image](https://github.com/user-attachments/assets/44b621a8-4ed8-446f-837e-783291ff5f86)
<br>
Prosedürümüzü görmek için prosedürümüze sağ tıklayıp "Modify" diyoruz.<br>
![image](https://github.com/user-attachments/assets/ae749cf9-5b8f-4aab-af78-8d33a48e006a)
<br>
Modify dedikten sonra prosedürümüz bu şekilde çıkacaktır.<br><br>

📝 Prosedürümüzü çalıştırmak için EXEC (ProsedürAdı) veya EXECUTE (ProsedürAdı) yazıyoruz ve çalıştırıyoruz.<br><br>

📍 Prosedür silmek için DROP PROCEDURE (ProsedürAdı)<br>
📍 Prosedür güncellemek için ALTER PROCEDURE (ProsedürAdı) AS (değiştirilecek sütunlar veya isimler vs.)<br>

Parametreli prosedür eklemek için @ işareti kullanırız. Örnek kullanım şu şekildedir:<br><br>
ALTER PROCEDURE URUNGETIR<br>
@Deger varchar(50)='BUZDOLABI'<br>
AS<br>
SELECT URUNSTOK,URUNMARKA FROM TBLURUNLER<br>
WHERE URUNAD=@Deger<br><br>

Bu prosedürümüzde @Deger isminde bir parametre oluşturduk ve seçeceğimiz değeri BUZDOLABI olarak belirledik. Verileri görüntüleme sorgusunu yazdıktan sonra bir şart belirledik ve şartımız URUNAD sütununda yer alan @Deger parametresini eşleştirdik. Ardından EXECUTE URUNGETIR sorgusunu çalıştırdığımız zaman sadece BUZDOLABI ürününe ait olan markaları görüntüleyecektir.<br><br>

<hr>

# 🖥️ Bölüm 10 - Date Sorguları
Bu bölümde;<br><br>
DATEPART, DATENAME, DATEDIFF ve DATEADD konularına yer verilmiştir.<br><br>

## 🗓️ SQL DATEPART Fonksiyonu
DATEPART, SQL Server’da belirli bir tarih değerinin içinden yıl, ay, gün, saat, dakika gibi bileşenleri çıkarmak için kullanılan bir fonksiyondur.<br><br>

📍 Örnek Kullanım: Gün aralığı 1 ve 3 olan değerleri gösteren sorgu<br>
SELECT * FROM TBLHAREKET WHERE DATEPART(DAY,TARIH) BETWEEN 1 AND 3<br><br>

## 🗓️ SQL DATENAME Fonksiyonu
SQL Server'da DATENAME, tarih (DATE, DATETIME, DATETIME2, SMALLDATETIME) sütunlarından yıl, ay, gün, hafta, saat gibi bilgileri string (VARCHAR) olarak döndürmek için kullanılır.<br><br>

### 📌 Farkı:
DATEPART sayısal değer döndürürken,<br>
DATENAME metinsel karşılığını döndürür.<br><br>

📍 Örnek Kullanımlar:<br><br>
Şu anki ay değerini gösteren sorgu<br>
SELECT DATENAME(MONTH,getdate())<br><br>

Girilen tarihe göre haftayı gösteren sorgu<br>
SELECT DATENAME(WEEKDAY,'2025.06.10')<br><br>

## 🗓️ SQL DATEDIFF Fonksiyonu
SQL Server'da DATEDIFF, iki tarih arasındaki farkı belirli bir zaman birimi (gün, ay, yıl, saat, dakika vb.) cinsinden hesaplamak için kullanılır.<br><br>

📍 Örnek Kullanım: Şu anki ile 2022.10.25 tarihin arasındaki yıl farkını gösteren sorgu<br>
SELECT DATEDIFF(YEAR,'2022.10.25',GETDATE())<br><br>

## 🗓️ SQL DATEADD Fonksiyonu
SQL Server'da DATEADD, bir tarihe belirli bir zaman birimi (gün, ay, yıl, saat, dakika vb.) eklemek veya çıkarmak için kullanılır.<br><br>
📍 Örnek Kullanım: Şu anki tarihe 3 yıl ekleyen sorgu<br>
SELECT DATEADD(YEAR,3,'2025-02.22')<br><br>

<hr>

# 🖥️ Bölüm 11 - Alt Sorgu Örnekleri
Bu bölümde alt sorgular ile ilgili genel tekrar uygulamaları yapılmıştır.<br><br>

📍 Örnek Kullanım: Ürünler içerisinde sadece BİLGİSAYAR kategorisine ait satılmış olan ürünleri listeleyen sorgu<br>
SELECT * FROM TBLHAREKET WHERE URUN IN(SELECT URUNID FROM TBLURUNLER WHERE KATEGORI=1)<br><br>

📍 Örnek Kullanım: BEYAZ EŞYA kategorisindeki yapılan harcamaları getiren sorgu (İç içe 3 sorgu)<br>
SELECT * FROM TBLHAREKET WHERE URUN IN(SELECT URUNID FROM TBLURUNLER WHERE KATEGORI=(SELECT KATEGORIID FROM TBLKATEGORI WHERE KATEGORIAD='BEYAZ EŞYA'))<br><br>

📍 Örnek Kullanım: Adanalı veya Ankaralı müşterilere satılan ürünlerin toplam fiyatını getiren sorgu<br>
SELECT SUM(TUTAR) FROM TBLHAREKET WHERE MUSTERI IN(SELECT MUSTERIID FROM TBLMUSTERI WHERE MUSTERISEHIR='ADANA' OR MUSTERISEHIR='ANKARA')<br><br>

📍 Ek olarak yeni bir tablo oluşturduk. Tablomuzun ismini TBLKASA olarak belirledik.<br><br>
CREATE TABLE TBLKASA<br>
(<br>
TOPLAM decimal(18,2)<br>
)<br><br>

INSERT INTO TBLKASA VALUES (0)<br>
Buraya ilk olarak bir veri ekledik.<br><br>

📍 TBLHAREKET tablosunda yer alan tutarların toplamını TBLKASA tablosuna aktaralım.<br>
UPDATE TBLKASA SET TOPLAM = (SELECT SUM(TUTAR) FROM TBLHAREKET)<br><br>

<hr>

# 🖥️ Bölüm 12 - Tetikleyiciler
## ⚙️ Trigger Nedir?
Trigger (Tetikleyici), bir veritabanı tablosunda belirli bir olay gerçekleştiğinde (INSERT, UPDATE veya DELETE gibi) otomatik olarak çalışan özel bir SQL prosedürüdür.<br><br>

### 📝 Trigger'ın Özellikleri:
✅ Belirli bir tabloya bağlıdır.<br>
✅ INSERT, UPDATE veya DELETE işlemleriyle tetiklenir.<br>
✅ BEFORE (Öncesinde) veya AFTER (Sonrasında) çalışabilir.<br>
✅ Otomatik olarak çalışır, manuel olarak çağrılamaz.<br><br>

⚠️ SQL Trigger’lar veritabanı yönetimini otomatize etmek için güçlü bir araçtır ancak aşırı kullanımı performans sorunlarına neden olabilir. İhtiyaca göre dikkatli kullanılmalıdır!<br><br>

📍 SatisVT veri tabanı üzerinden yeni bir tablo oluşturuyoruz ve ismini TBLSAYAC olarak belirliyoruz.<br><br>
CREATE TABLE TBLSAYAC<br>
(<br>
ISLEM int<br>
)<br><br>

Veri eklemek için INSERT INTO TBLSAYAC VALUES (0)<br>
Ardından TBLHAREKET tablosunda toplamda kaç kayıt varsa güncellemek için UPDATE TBLSAYAC SET ISLEM = (SELECT COUNT(*) FROM TBLHAREKET)<br><br>

✅ Artık Trigger (Tetikleyici) oluşturabiliriz.<br><br>
CREATE TRIGGER ISLEMARTIS<br>
ON TBLHAREKET<br>
AFTER INSERT<br>
AS<br>
UPDATE TBLSAYAC SET ISLEM=ISLEM+1<br><br>

TBLHAREKET tablosunda herhangi bir kayıt girdiğimiz zaman tetikleyici otomatik olarak birer artacaktır.<br><br>
![image](https://github.com/user-attachments/assets/990a5156-e493-4ec3-aa88-f2afad913593)
<br>
Burada tetikleyici, üzerinde çalıştığımız tablonun altındadır, yani TBLHAREKET tablosu üzerinde çalıştık. Triggers klasörüne geldiğimiz zaman oluşturduğumuz tetikleyiciyi görebiliriz.<br><br>

![image](https://github.com/user-attachments/assets/569385e7-0c2f-4aef-9407-13068c282658)
<br>
İlgili tetikleyiciye sağ tıklayıp Modify ile görüntüleyebiliriz.<br><br>
![image](https://github.com/user-attachments/assets/2d9d95e0-58ef-42f1-a3f0-d2f153410b83)
<br>
Oluşturduğumuz trigger bu şekilde gelmiş oldu.<br><br>

<hr>

# 🖥️ Bölüm 13 - View
## ⚙️ View (Görünüm) Nedir?
View, SQL'de sanal bir tablo olarak tanımlanabilir. Gerçek bir tablo gibi sorgulanabilir, ancak fiziksel olarak veri içermez. View, bir veya birden fazla tablodan gelen verileri içeren bir sorgunun sonucunu kaydeder ve sanki bir tabloymuş gibi kullanılmasını sağlar.<br><br>
### 📝 View Kullanım Amaçları

✅ <b>Karmaşık Sorguları Kolaylaştırmak</b><br>
Tekrarlanan karmaşık sorgular yerine bir View oluşturularak, aynı sorgu tekrar tekrar yazılmadan kullanılabilir.<br><br>

✅ <b>Veri Güvenliğini Sağlamak</b><br>
Kullanıcıların yalnızca belirli sütunlara veya satırlara erişmesini sağlamak için View kullanılabilir.<br><br>

✅ <b>Bakımı Kolaylaştırmak</b><br>
Tablo yapısı değiştiğinde, yalnızca View güncellenerek uygulamalarda değişiklik yapılmasına gerek kalmaz.<br><br>

✅ <b>Performansı Artırmak</b><br>
Özellikle Indexed View kullanılarak bazı durumlarda performans avantajı sağlanabilir.<br><br>

📍 View Oluşturma şu şekildedir:<br>
CREATE VIEW TEST1<br>
AS<br>
SELECT * FROM TBLKATEGORI<br><br>

![image](https://github.com/user-attachments/assets/874c3a29-6cd1-4472-96df-7b0c935b3ce4)
<br>
Sorguyu çalıştırdıktan sonra ilgili veri tabanımıza ait olan Views klasörüne geliyoruz ve oluşturduğumuz View'i burada görüntülüyoruz.<br><br>

![image](https://github.com/user-attachments/assets/97c9eace-57d7-421b-bf32-96133fd265fa)
<br>
View'i görüntüleyebilmek için oluşturduğumuz TEST1'e sağ tıklayıp Design diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/daf6c36f-0d5b-4bb7-86b7-d81280b28a85)
<br>
View karşımıza bu şekilde çıkmaktadır. Bu sayfamızda 3 farklı kısım karşımıza çıkmaktadır.<br><br>

1️⃣ Üstte bulunan birinci kısımda View'in dahil olduğu tablolar bulunmaktadır. Buraya isterseniz sağ tuş yapıp Add Table diyerek yeni tablolar, viewler veya fonksiyonlar ekleyebilirsiniz. Başka bir ihtimal, bu tabloyu sağ tıklayıp Remove diyerek silebiliriz, veya sadece ismin, sütunların gözükmesini sağlayabiliriz.<br>
2️⃣ İkinci kısımda seçmiş olduğumuz tabloya ait sütunların ve bu sütunların özelliklerini, sıralama tiplerini vs. gözüktüğü alandır. Alias dediğimiz kısım takma ad kısmıdır. Bunları Visual Studio üzerinden Dataset kullandığımızda göreceğiz.<br>
3️⃣ Üçüncü kısımda ise tabloya ait yukarıda çekilmiş olan sütunların sorgu kısmı mevcuttur.<br><br>

✅ View'i kaydettikten sonra kendisi otomatik olarak view'i güncellemiş oldu.<br><br>

📍 View'in çalışması için: SELECT * FROM TEST1<br><br>
📍 View'i güncellemek için:<br>
ALTER VIEW TEST1<br>
AS<br>
SELECT * FROM TBLKATEGORI WHERE KATEGORIID<4<br><br>

View'i güncelledikten sonra tekrardan TEST1'e sağ tıklayıp Design diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/bf347fd0-644e-4e18-b0df-dd3496e982f2)
<br>
Bu kez ikinci kısımda yer alan Filter kısmı bize şartı belirlemiş oldu. Üçüncü kısma yazdığımız yeni sorgu burada gözükmüş oldu.<br><br>

![image](https://github.com/user-attachments/assets/e29d6f4d-1240-4ed4-b3bc-2e4a527f97e9)
<br>
Yeni bir View oluşturmak için Views klasörüne sağ tıklayıp New View diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/18841512-05bb-4cd1-a25c-bf057be84aa4)
<br>
Karşımıza bu şekilde çıkacaktır. Burada TBLKATEGORI ve TBLURUNLER tablolarını seçiyoruz. Veya tablo oluşturmadan birinci kısma sağ tıklayıp Add Table diyerek oluşturabiliriz.<br><br>

![image](https://github.com/user-attachments/assets/57792eaa-8c09-47cb-8a49-5137fd13d305)
<br>
TBLKATEGORU ve TBLURUNLER View sayfası bu şekildedir.<br><br>

![image](https://github.com/user-attachments/assets/30dfe45d-b5b7-4bc5-9bde-2339bddc3aae)
<br>
View sayfamızı kaydediyoruz ve ismini TEST2 olarak belirliyoruz.<br><br>

![image](https://github.com/user-attachments/assets/83c97502-0706-44c3-93d6-061165a8e57b)
<br>
Kaydettikten sonra bize bir hata ekranı gösterecektir. Burada hata vermesinin sebebi, view'in içerisine herhangi bir sütun seçilmediğinden bahsetmektedir.<br><br>

![image](https://github.com/user-attachments/assets/7c7363f9-1105-4a60-97f2-e52a51fdb51f)
<br>
TBLURUNLER tablosundan URUNID sütununu seçtikten sonra artık kaydedebiliriz. TEST2 isminde kaydediyoruz.<br><br>

![image](https://github.com/user-attachments/assets/1a65881c-2363-4a2f-ab99-da8d0cbf685f)
<br>
Burada URUNAD, URUNMARKA ve KATEGORI sütunlarını da eklemiş olduk. Tekrardan TEST2 View'i kaydediyoruz.<br><br>

![image](https://github.com/user-attachments/assets/2849bcf3-ee46-49f6-bd17-16ed924bc422)
<br>
TEST2 View'i görüntülediğimiz zaman verilerimiz bu şekilde görüntülenecektir, ancak burada KATEGORI kısmı isim yerine ID değerlerini göstermektedir. Bunun için tekrar TEST2 View'e gidiyoruz.<br><br>

![image](https://github.com/user-attachments/assets/7ba8e032-5ae3-44e0-bfeb-5f2764ea59c7)
<br>
Bu kez TBLURUNLER tablosunda yer alan KATEGORI sütununu çıkarıp TBLKATEGORI tablosunda yer alan KATEGORIAD sütununu seçiyoruz ve kaydediyoruz.<br><br>

![image](https://github.com/user-attachments/assets/01d6609a-5563-4db2-8197-e1e2f82884f0)
<br>
Tekrar çalıştırdıktan sonra verilerimiz bu şekilde kategorinin isimleri gelmiş oldu.<br><br>

![image](https://github.com/user-attachments/assets/6dc53a71-a44d-4977-b76c-3c35eba4c80c)
<br>
✅ TEST2 View sayfasının üçüncü kısmına istersek kendimiz bir sorgu yazabiliriz. Burada yazdığımız sorgu, içinde a harfi geçen ürün adlarını gösteren sorguyu yazmış olduk.<br><br>

![image](https://github.com/user-attachments/assets/9dd91a52-7178-4831-9131-78e4f5b0fa19)
<br>
Sorguyu çalıştırdığımız zaman içinde a harfi olan ürünlerin isimlerini getirmiş oldu.<br><br>

Yeni bir View oluşturuyoruz ve bu kez alacağımız tablolar; TBLHAREKET, TBLURUNLER, TBLPERSONEL ve TBLMUSTERI tabloları olacaktır.<br><br>

![image](https://github.com/user-attachments/assets/cefc8adb-68c3-4f5e-853c-844d618ee5f9)
<br>
### 📝 Seçtiğimiz tabloya ait sütunlar;
📍 TBLURUNLER --> URUNAD<br>
📍 TBLMUSTERI --> MUSTERIAD, MUSTERISOYAD<br>
📍 TBLPERSONEL --> PERSONELADSOYAD<br>
📍 TBLHAREKET --> ADET, TUTAR, TARIH<br><br>
✅ Seçtikten sonra TEST3 isminde kaydediyoruz.<br><br>

![image](https://github.com/user-attachments/assets/28f5d173-ba1a-44e5-afe9-acff44a270cf)
<br>
Buradaki şart, ADET değeri 1'den büyük olanları listeleyecektir. Bunun için sorgu yazmak yerine ikinci kısımda yer alan ADET sütununundaki Filter bölümüne >1 yazmamız yeterli olacaktır.<br><br>

<hr>

# 🖥️ Bölüm 14 - Northwind Veri Tabanı
ℹ️ Nortwind veri tabanına erişmek için https://disk.yandex.com.tr/d/wuDMwIoKOcfLdw linkten indirebilirsiniz.<br><br>

Nortwind veri tabanı bize hazır olarak sunduğu tabloların oluştuğu, verilerin yer aldığı bir veri tabanıdır. Northwind veri tabanımızı açıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/bd215cf7-c272-45b2-80e4-a2f68b3a5d32)
<br>
Veri tabanını açtığımız zaman upuzun sorgular çıkmaktadır. F5 ile çalıştırıyoruz. Biraz geç çalışabilir.<br><br>

![image](https://github.com/user-attachments/assets/e2de231c-d874-4f80-b5e7-db5ebc86f914)
<br>
Sorgu çıktısında 2 tane hata bulmaktadır, bu hata prosedürün bulunamadığını belirtmektedir ancak bu hataların pek bir önemi yoktur. Veri tabanımız hazır hale gelecektir.<br><br>

![image](https://github.com/user-attachments/assets/83fd2511-e4e5-49bf-9e73-9fdc541733b4)
<br>
Northwind veri tabanı bu şekilde gelmektedir.<br><br>

![image](https://github.com/user-attachments/assets/c80c2aae-dfb0-41de-a262-d9c721ebdb1b)
<br>
Customers tablosunda yer alan veriler bu şekilde gelmektedir.<br><br>

Northwind Sorgu Örnekleri:<br><br>

📍 Products tablosunda yer alan verileri listeleyen sorgu<br>
SELECT * FROM Products<br><br>

📍 Products tablosunda yer alan verilerin CategoryName değeri 'SeaFood' olanları listeleyen sorgu<br>
SELECT * FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='SeaFood')<br><br>

📍 Orders tablosu içerisinde şehri Londra olan çalışanların vermiş olduğu siparişleri ve ShipVia=3 olanları ve ShipCity='Oulu' olanları listeleyen sorgu<br>
SELECT * FROM Orders WHERE EmployeeID IN(SELECT EmployeeID FROM Employees WHERE City = 'London') AND ShipVia=3 AND ShipCity='Oulu'<br><br>

![image](https://github.com/user-attachments/assets/8b68cd96-2919-435f-a2c8-5512f5976283)
<br>
Burada TEST1 isminde bir View oluşturmaya çalıştık ancak hata aldık. Çünkü daha önceden prosedür kullanırken bu ismi vermiştik. Onun yerine ismini VIEW1 olarak belirleyelim.<br><br>

CREATE VIEW VIEW1<br>
AS<br>
SELECT OrderID,CompanyName,FirstName + ' ' + LastName AS 'Employee',OrderDate,ShipName,ShipCity,ShipCountry FROM Orders<br>
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID<br>
INNER JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID<br><br>

![image](https://github.com/user-attachments/assets/4f7808b3-6717-4fc2-8804-0631187cb219)
<br>
Nortwind veri tabanı üzerinden yeni bir View oluşturalım.<br><br>

![image](https://github.com/user-attachments/assets/fc3133b7-e0bf-495d-93d0-9ee966cd5641)
<br>
Burada Orders, Customers ve Employees tabloları üzerinde çalışacağız.<br><br>

### 📝 Seçilecek tablolar ve sütunları:
Orders --> OrderID<br>
Customers --> CompanyName<br>
Customers --> ContactTitle<br>
Customers --> City<br>
Employees --> FirstName<br>
Employees --> LastName<br>
Employees --> Country<br>
Orders --> OrderDate<br>
Orders --> ShipCity<br>
Orders --> ShipRegion<br>
Orders --> ShipCountry<br><br>
![image](https://github.com/user-attachments/assets/96b58cf4-2d37-4637-abdc-7c3d49634128)
<br>
Seçilecek tablolara ait sütunları seçtikten sonra VIEW2 isminde kaydediyoruz. Burada istediğiniz sorguları yazabilirsiniz.<br><br>

<hr>

# 🖥️ Bölüm 15 - T-SQL
## ⚙️ T-SQL (Transact-SQL) Nedir?
T-SQL (Transact-SQL), Microsoft SQL Server tarafından kullanılan ve SQL'in (Structured Query Language) genişletilmiş bir versiyonudur. SQL'in standart sorgu dili özelliklerine ek olarak, programlama yetenekleri içerir.<br><br>

### 📝 T-SQL’in Özellikleri
✅ <b>Değişken Kullanımı</b><br>
DECLARE, SET, SELECT INTO ile değişken tanımlama ve atama mümkündür.<br><br>

📍 Örnek Kullanım:<br>
DECLARE @Sayi int<br>
set @Sayi=24<br>
SELECT @Sayi as 'Sonuç'<br><br>

📍 Örnek Algoritma Sorusu: Sorgu kısmından gönderilen 3 basamaklı sayıyı basamaklarına ayıran ve daha sonra bu basamakları toplayan sorgu<br>
DECLARE @sayi int, @birler int, @onlar int, @yuzler int, @toplam int<br>
set @sayi=456<br>
set @yuzler = @sayi / 100<br>
set @onlar = (@sayi / 10) % 10<br>
set @birler = @sayi % 10<br>
set @toplam = @birler + @onlar + @yuzler<br>
SELECT @yuzler as 'Yüzler', @onlar as 'Onlar', @birler as 'Birler', @toplam as 'Sonuç'<br><br>

Tablo içi değişkenler kullanımında SatisVT adlı veri tabanımız üzerinden yapacağız.<br><br>
📍 Örnek Kullanım: TBLMUSTERI tablosunda MUSTERIBAKIYE en fazla olanı değişken ile tanımlama<br>
Declare @Bakiye int<br>
set @Bakiye=(SELECT MAX(MUSTERIBAKIYE) FROM TBLMUSTERI)<br>
SELECT @Bakiye<br><br>

Bazı sistem fonksiyonları aşağıda verilmiştir. Sunucu adı, hata, varsayılan dil gibi birçok sistem fonksiyonları mevcuttur, ancak SQL'de pek fazla kullanılmamaktadır.
SELECT @@SERVERNAME, @@ERROR, @@DEFAULT_LANGID<br>
Bu ifadelerde sunucu adı, hatayı, varsayılan dili gösterir.<br><br>

✅ <b>PRINT Kullanımı</b><br>
SQL'de PRINT ifadesi, genellikle hata ayıklama (debugging) veya işlem akışını takip etmek için kullanılır. T-SQL'de (SQL Server için) bir metni veya değişkenin değerini ekrana yazdırmak için PRINT komutu kullanılır.<br><br>

📍 Örnek Kullanım: Print 'Merhaba'<br><br>

📍 Tablo tipinde de bir değişken kullanılabilir. Örneği aşağıda verilmiştir:<br><br>
DECLARE @Kisiler table<br>
(<br>
KisiID int identity(1,1),<br>
KisiAd varchar(50),<br>
KisiSehir varchar(15)<br>
)<br>
INSERT INTO @Kisiler (KisiAd,KisiSehir) VALUES ('Ali','Malatya')<br><br>

✅ <b>IF-ELSE Kullanımı</b><br>
SQL'de IF...ELSE yapısı, belirli bir koşula bağlı olarak farklı işlemler gerçekleştirmek için kullanılır. T-SQL (SQL Server) kullanıyorsanız, IF...ELSE şu şekilde kullanılır:<br><br>
if(SELECT Sum(URUNSTOK) FROM TBLURUNLER) > 100<br>
print 'Toplam Ürün Sayısı 100 den Büyük'<br>
else<br>
print 'Toplam Ürün Sayısı 100 den Küçük'<br><br>

✅ <b>CASE Kullanımı</b><br>
SQL'de CASE ifadesi, koşullu mantık işlemleri yapmak için kullanılır. IF...ELSE gibi çalışır ama genellikle SELECT, WHERE, ORDER BY gibi SQL ifadeleri içinde kullanılır:<br><br>
SELECT URUNAD, URUNMARKA, URUNDURUM = CASE URUNDURUM<br>
WHEN '1' THEN 'ÜRÜN VAR'<br>
WHEN '0' THEN 'ÜRÜN YOK'<br>
END<br>
FROM TBLURUNLER<br><br>

CASE ifadesini bu kez URUNSTOK sütunundaki değerlere göre kritik seviyeyi bulalım:<br><br>

CREATE PROCEDURE TEST4<br>
AS<br>
SELECT URUNAD, URUNMARKA, URUNSTOK, URUNSTOK = <br>
CASE<br>
WHEN URUNSTOK >= 1 AND URUNSTOK <= 5 THEN 'KRİTİK SEVİYE'<br>
WHEN URUNSTOK >= 6 AND URUNSTOK <= 10 THEN 'TAKVİYE YAPILMALI'<br>
WHEN URUNSTOK > 10 THEN 'ÜRÜN STOK SAYISI YETERLİ'<br>
END<br>
FROM TBLURUNLER<br><br>
Burada TEST4 isminde bir prosedür oluşturduk. Ardından seçeceğimiz tabloya ait sütunları yazdık. Buradaki amaç, URUNSTOK değerlerine göre CASE işlemleri yapmaktır. Stok değerleri 1 ile 5 aralığındaysa KRİTİK SEVİYE, 6 ile 10 aralığındaysa TAKVİYE YAPILMALI, 10'dan fazla olan stoklara da ÜRÜN STOK SAYISI YETERLİ olarak belirledik.<br><br>

✅ <b>WHILE Döngüsü</b><br>
SQL Server'da WHILE döngüsü, belirli bir koşul sağlandığı sürece bir bloğun tekrar tekrar çalıştırılmasını sağlar. Genellikle iteratif işlemler (örneğin, belirli bir sayıda kayıt ekleme, güncelleme veya silme) yapmak için kullanılır.<br><br>

DECLARE @sayac int<br>
set @sayac=1<br>
while @sayac<=5<br>
begin<br>
print 'Merhaba SQL Dersleri'<br>
set @sayac = @sayac + 1<br>
end<br><br>

### 📌 Açıklamalar:
🔹 @sayac değişkeni int değeri olaraka belirlenir ve 1'den başlatılır.<br>
🔹 WHILE @sayac <= 5 olduğu sürece döngü devam eder.<br>
🔹 BEGIN ifadesiyle başlar.<br>
🔹 PRINT ifadesi ile değer ekrana yazdırılır.<br>
🔹 SET @sayac = @sayac + 1 ile her döngüde @sayac değeri artırılır.<br>
🔹 Koşul sağlanmazsa döngü sona erer.<br>
🔹 END ile sonlandırılır.<br><br>

✅ <b>WAITFOR Kullanımı</b><br>
SQL Server'da WAITFOR ifadesi, belirli bir süre boyunca işlemi bekletmek veya belirli bir zamana kadar bekleyip sonra devam etmek için kullanılır.<br><br>
🔹 İki farklı kullanım şekli vardır:<br><br>
📍 WAITFOR DELAY → Belirtilen süre kadar bekler.<br>
📍 WAITFOR TIME → Belirtilen zamana kadar bekler.<br><br>

📍 Örnek Kullanım: 7 saniye sonra TBLURUNLER tablosunu gösteren sorgu<br>
WAITFOR DELAY '00:00:07'<br>
SELECT * FROM TBLURUNLER<br><br>

<hr>

# 🖥️ Bölüm 16 - C# ile SQL

Bu bölümde artık C# ile SQL üzerinden proje oluşturuyoruz.<br><br>
⚠️ <b>CSharpEducation adlı repomda yer alan Veri Tabanı SQL bölümünde daha önceden anlatıldığı için bu kısımda CRUD işlemleri hakkında fazla bilgi anlatılmamıştır!</b>

![image](https://github.com/user-attachments/assets/9be5711a-adaf-4817-be9a-d50ba806a973)
<br>
Visual Studio 2022'yi açıyoruz. Daha eski versiyonları da kullanabilirsiniz. Visual Studio 2022'yi açtığımızda karşımıza bu şekilde çıkacaktır. Sol tarafta daha önceden yapmış olduğum projeler mevcuttur. Daha önceden herhangi bir proje oluşturmadıysanız bu kısım sizde boş gözükecektir. Bunun için sağ tarafta en alt seçenekte yer alan "Create a new project" diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/00e4ae65-1967-4354-a0f1-e2bc75d8b700)
<br>
Bir sonraki ekran bu şekilde çıkmaktadır. Sol tarafta daha önceden kullandığım proje şablonları yer almaktadır, daha önceden herhangi bir şablon oluşturmadıysanız bu kısım sizde boş gözükecektir. Bunun için yukarıda arama çubuğuna "Windows Forms App (.NET Framework)" diyoruz veya arama çubuğunun hemen altında olan üç tane seçeneklerden uygun olan şablonumuzu seçiyoruz. Sol tarafta C#, ortada yer alan All Platforms kısmına isterseniz direkt bu şekilde veya Windows olanı seçebilirsiniz. En sağda ise daha önceden API ile ilgili bir proje yaptığım için o şekilde kalmaktadır, dilerseniz All Project Types yapabilirsiniz. Windows Forms App (.NET Framework) dedikten sonra Next diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/9f96e8de-5006-45dd-8829-78ad06ef6979)
<br>
Burada projemizin ismini belirliyoruz. İsmini Proje_SQL_DB olarak belirledik. Location kısmında ilgili dizine oluşturacaktır, dilerseniz değiştirebilirsiniz. Solution kısmında ise ismin gözüktüğü ve işlerimizi yürüteceğimiz alandır. Solution kısmında birden fazla proje bulunabilir. İşlemlerimizi tamamladıktan sonra Create diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/bc206550-c6e4-4ec2-a865-f1197e2183c8)
<br>
Projemiz bu şekilde oluşturuldu. Sol tarafta Toolbox (Araç Kutusu) yer almaktadır. Burada Button, Label, TextBox gibi araçları kullanabiliriz. Sağ tarafta bulunan üst kısımda projemize ait katman ve Form yer almaktadır. Alt kısmında ise Form'a ait özellikler yer almaktadır. Bu özellikler; yazı tipini değiştirme, arka plan rengini değiştirme, formun ismini değiştirme gibi özellikler kullanılabilir.<br><br>

### ⚙️ Burada kullanacağımız araçlar:
📝 Panel<br>
📝 PictureBox<br>
📝 Button<br>
📝 Label<br><br>

![image](https://github.com/user-attachments/assets/ec548149-d7de-4342-92f3-5d80bccd9136)
<br>
Formumuzun tasarımını bu şekilde oluşturdum. İlk yapacağımız işlem Kategori için olacaktır. Kategori tablosunda temel CRUD (Create, Read, Update, Delete) işlemlerini yapacağız.<br><br>

![image](https://github.com/user-attachments/assets/06009c89-55c1-4324-bed7-0f25e5906883)
<br>
İlk olarak yeni bir Form oluşturuyoruz. Yukarıda yer alan Project sekmesinden Add Form (Windows Forms), veya sağda bulunan Proje_SQL_DB katmanımıza sağ tıklayarak Add kısmından Form diyebiliriz.<br><br>

![image](https://github.com/user-attachments/assets/77e317ea-d3e8-430a-af9a-b58a11da2d66)
<br>
FrmKategori formumuzu bu şekilde oluşturduk.<br><br>
### ⚙️ Burada kullanacağımız araçlar:
📝 TextBox<br>
📝 PictureBox<br>
📝 Button<br>
📝 Label<br><br>

![image](https://github.com/user-attachments/assets/90425513-c6c7-41ef-bd6c-ed125220d9f0)
<br>
Burada veri tabanı bağlama işlemlerini gerçekleştireceğiz. Project kısmından Add New Data Source diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/a0c5670a-70ec-4bab-ba1d-20b4f7986922)
<br>
Çıkan pencerede direkt Next diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/d79c3de0-76b7-45d5-982d-c7f9aa9f2229)
<br>
Tekrar Next diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/b1de94f9-b6f9-4d40-bbfd-5cd378dc47b6)
<br>
Burada daha önceden herhangi bir veri tabanı çalışması yapmadıysanız bu kısım sizde boş gözükecektir. Sağ tarafta bulunan New Connection diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/ed2b7792-1f8a-4526-95a0-877392cec4cf)
<br>
Bu kısımda ilk olarak Server Name kısmını giriyoruz. Server Name kısmı, SQL'de yer alan sunucumuzun ismidir. Sunucumuzun ismini öğrenmek için;<br><br>

![image](https://github.com/user-attachments/assets/ab426b49-c9fa-48aa-b205-fabe3615aa75)
<br>
SQL'e gelip en üstte bulunan bağlantıyı sağ tıklayıp Properties diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/f13bab0a-86ac-4870-8527-802a7b23f917)
<br>
Burası sunucumuzun adıdır. Sunucu adını kopyalıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/1964a3af-d1e3-4594-9e17-e2fc8ae95208)
<br>
Tekrardan C#'a dönerek sunucu adımızı yapıştırıyoruz. Encrypt kısmında True seçerseniz aşağıda yer alan Trust Server Certificate kısmını seçmeniz gerekmektedir. Biz burada Optional (False) olarak belirledik. Daha sonra aşağıda yer alan veri tabanımız olan SatisVT'yi seçiyoruz ve OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/b34b6f6f-c816-4915-8c35-fb97182bf92a)
<br>
Veri tabanımızın adresi gelmiş oldu. Eğer gelmezse "Show the connection" kısmında yer alan kutucuğu işaretleyin. Bağlantı adresimizi kopyalayıp Cancel diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/bfc09efb-6c88-4899-b771-2424965a0ba3)
<br>
Daha sonra FrmKategori formumuzun kod kısmına gelerek en üstte yer alan using kütüphanelerine yeni bir kütüphane ekliyoruz ve kütüphanemizin ismi using System.Data.SqlClient olarak ekliyoruz. Ardından kopyaladığımız bağlantıyı buraya eklemek için SqlConnection komutunu yazıyoruz ve bağlantı adresini yapıştırıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/848d586a-a0f8-4252-9ba0-6b6ef5ec9364)
<br>
Listeleme işlemi için SqlCommand oluşturuyoruz ve sorgumuzu yazıyoruz. Bu sorguyu baglanti değişkenimize dahil ediyoruz. Ardından SqlDataAdapter da değişkeni oluşturup komutu buraya aktarıyoruz. Tablo oluşturmak için ise DataTable komutundan dt isminde bir değişken kullanıyoruz ve içini doldurmak için da değişkenini dt'ye dolduruyoruz. En sonda bu verileri dataGridView aracından dt'ye aktarıyoruz.<br><br>

Form1'de Kategoriler formuna gitmek için Kategoriler butonuna geliyoruz;<br><br>
 FrmKategoriler fr = new FrmKategoriler();<br>
 fr.Show();<br><br>

![image](https://github.com/user-attachments/assets/5b82c45c-67ca-4ecd-82ec-82408649b31f)
<br>
Programımızı çalıştırdıktan sonra Kategoriler butonuna basıyoruz. Buradan Listele butonuna bastığımızda veriler görüntülenecektir. Burada sizde kenarları boş gözükebilir bunun için yapacağımız ayar:<br><br>

![image](https://github.com/user-attachments/assets/500211bd-beaa-4e4a-ac8f-5355d8ab481f)
<br>
dataGridView aracına tıkladığımızda sağ altta yer alan özelliklerden AutoSizeColumnsMode kısmını Fill yapmanız gerekmektedir.<br><br>

![image](https://github.com/user-attachments/assets/efb4c7bc-b7fc-487f-815c-b83ddaf6aaeb)
<br>
Silme ve güncelleme işlemleri bu şekildedir. Silme ve güncelleme işleminde ID'ye göre yapılmaktadır. Güncelleme işleminde ise diğer güncellenecek sütunlar da eklenir.<br><br>

![image](https://github.com/user-attachments/assets/22db902c-8275-4e6f-8bab-fffeca4dda43)
<br>
dataGridView özellikler içerisinde şimşek ikonu olan Events kısmından "CellClick" özelliğine geldiğimiz zaman, dataGridView aracında yer alan herhangi bir değere tıkladığımızda ilgili textBox'lara atama işlemi yapmaktadır.<br><br>

Bir form daha oluşturalım ve ismini FrmMusteri olarak belirleyelim.<br><br>
Burada şehirler için yeni bir tablo oluşturalım. Tablo için script kodları bu repoda yer verilmiştir.<br>

![image](https://github.com/user-attachments/assets/e80b00b6-d024-4813-953f-e6db15fecb89)
<br>
📝 City tablosunun ismini TBLSEHIR olarak değiştirdik.<br>
📝 TBLSEHIR tablosuna ait sütunların isimlerini ise code yerine PLAKA, name yerine SEHIRAD olarak belirledik.<br><br>

![image](https://github.com/user-attachments/assets/adb32bbc-33fd-4a04-9bf6-32b1cb059434)
<br>
FrmMusteri formumuzu bu şekilde tasarladık.<br><br>

![image](https://github.com/user-attachments/assets/1da017da-4211-408e-8437-b96840e13032)
<br>
Bağlantı adresimizi oluşturduk ve ek olarak metot uyguladık. Listeleme işleminde hem ekleme, hem silme hem de güncelleme işlemleri gerçekleştiği zaman metodumuzu çağırmak bize kolaylık sağlamaktadır.<br><br>

![image](https://github.com/user-attachments/assets/4c26cabd-088b-4a20-974a-82f7b2e4bea8)
<br>
Form yüklendiği zaman TBLSEHIR tablosunda yer alan şehirler ComboBox'a aktarılacaktır.<br><br>

![image](https://github.com/user-attachments/assets/dc20ef0c-b831-485f-911d-db7352cefb5f)
<br>

![image](https://github.com/user-attachments/assets/6124a57e-5687-4a29-8961-66404fb08f51)
<br>

Ekleme, silme, güncelleme ve dataGridView hücrelerine tıklandığında ilgili textBox, comboBox alanlara atma işlemleri bir önceki yaptığımız Kategoriler tablosundaki gibidir.<br><br>

![image](https://github.com/user-attachments/assets/4a5e5c5b-414c-4b4a-8fa0-78687f9bd42e)
<br>
Arama işlemi bu şekildedir. Burada müşterinin adına göre arama yapma işlemini uyguladık.<br><br>

![image](https://github.com/user-attachments/assets/9f056a4e-950a-402e-8f4d-6cc02b5f7fe9)
<br>
SQL'e geliyoruz ve daha önceden oluşturduğumuz TEST4 prosedürüne sağ tıklayıp Execute Stored Procedure diyoruz ve çıkan ekrana OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/2b304b42-0609-4b7f-b134-baad6b4f66bf)
<br>

Ana formumuzda iki adet Chart ve dataGridView ekledik. Burada Kritik Stoktaki Ürünler değerlerini dataGridView'e prosedür olarak aktaracağız.<br><br>

![image](https://github.com/user-attachments/assets/91075875-db17-4638-81e8-10cab50209a8)
<br>
TEST4 prosedürünü bu şekilde çağırıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/aa62c302-617d-4889-bea0-2e304ff119eb)
<br>
Programımızı çalıştırdığımızda kritik stoktaki ürünler bu şekilde görüntülenecektir.<br><br>

![image](https://github.com/user-attachments/assets/90250ffd-37c2-4f60-a362-f3cd773d1456)
<br>

![image](https://github.com/user-attachments/assets/fa5599da-9aac-45d1-828a-c6f1f369a6ec)
<br>
Bu kez grafiklere veri çekme işlemi uyguluyoruz. Birinci grafiğe Kategorileri, ikinci grafiğe ise müşterilere ait şehirleri ekranda göstermiş olduk.<br><br>

<hr>

# 🖥️ Bölüm 17 - Trigger 2
Trigger işlemlerine devam ediyoruz.<br><br>

📍 Yeni veri tabanı oluşturuyoruz.<br>
CREATE DATABASE DbYeni<br><br>

📍 Tablolarımızı oluşturalım.<br>
CREATE TABLE TBLMUSTERI<br>
(<br>
ID INT PRIMARY KEY IDENTITY(1,1),<br>
AD VARCHAR(20),<br>
SOYAD VARCHAR(20),<br>
SEHIR VARCHAR(15),<br>
BAKIYE DECIMAL(18,2)<br>
)<br><br>

CREATE TABLE TBLKATEGORI<br>
(<br>
KATEGORIID INT PRIMARY KEY IDENTITY(1,1),<br>
AD VARCHAR(20)<br>
)<br><br>

CREATE TABLE TBLURUN<br>
(<br>
URUNID INT PRIMARY KEY IDENTITY(1,1),<br>
AD VARCHAR(20),<br>
ALISFIYAT DECIMAL(18,2),<br>
SATISFIYAT DECIMAL(18,2),<br>
STOK SMALLINT,<br>
DURUM BIT,<br>
KATEGORI INT<br>
)<br><br>

CREATE TABLE TBLSATIS<br>
(<br>
SATISID INT PRIMARY KEY IDENTITY(1,1),<br>
MUSTERI INT,<br>
URUN INT,<br>
TARIH DATE<br>
)<br><br>

CREATE TABLE TBLSTOK<br>
(<br>
TOPLAMURUN INT<br>
)<br><br>

📍 Trigger Örneği: TBLURUN tablosuna her bir veri eklediğim zaman TBLSTOK değerini bir arttıran sorgu<br>
CREATE TRIGGER ARTTIR<br>
ON TBLURUN<br>
AFTER INSERT<br>
AS<br>
UPDATE TBLSTOK SET TOPLAMURUN+=1<br><br>

📍 Trigger Örneği: TBLURUN tablosunda yer alan STOK sayılarının toplamının üzerine ekleme işlemini Trigger üzerinde yapan sorgu<br>
CREATE TRIGGER ARTTIR<br>
ON TBLURUN<br>
AFTER INSERT<br>
AS<br>
DECLARE @STOKSAYI INT<br>
SELECT @STOKSAYI=STOK FROM inserted<br>
UPDATE TBLSTOK SET TOPLAMURUN+=@STOKSAYI<br><br>

Burada @STOKSAYI isminde bir değişken oluşturduk. Daha sonra @STOKSAYI değerini seçip TBLURUN tablosunda yer alan STOK'a atama işlemi yapıyoruz, inserted ifadesi ise üzerinde çalıştığım tabloda bulunan stok sayısı sütunundaki değeri @STOKSAYI değişkenine ata anlamına gelmektedir.<br><br>

📍 Trigger Örneği: TBLURUN tablosunda yer alan STOK sayılarını bu kez silme işlemini Trigger üzerinde yapan sorgu<br>
CREATE TRIGGER AZALT<br>
ON TBLURUN<br>
AFTER DELETE<br>
AS<br>
DECLARE @STOKSAYI INT<br>
SELECT @STOKSAYI=STOK FROM deleted<br>
UPDATE TBLSTOK SET TOPLAMURUN-=@STOKSAYI<br><br>

<hr>

# 🖥️ Bölüm 18 - Transaction
SQL'de Transaction (İşlem), bir veya daha fazla SQL sorgusunun tek bir işlem birimi olarak yürütülmesini sağlayan mekanizmadır. Eğer işlem başarılı bir şekilde tamamlanırsa COMMIT edilir, eğer herhangi bir hata oluşursa ROLLBACK ile önceki duruma geri döndürülür.<br><br>

### ⚙️ Transaction Özellikleri (ACID)
Bir Transaction, ACID (Atomicity, Consistency, Isolation, Durability) özelliklerine uymalıdır:<br><br>

:one: <b>Atomicity (Bölünmezlik):</b> İşlem ya tamamen başarılı olur ya da tamamen iptal edilir.<br>
:two: <b>Consistency (Tutarlılık):</b> İşlem tamamlandığında veri tabanı tutarlı bir durumda kalmalıdır.<br>
:three: <b>Isolation (İzolasyon):</b> Bir Transaction, diğer Transaction'ları etkilememelidir.<br>
:four: <b>Durability (Kalıcılık):</b> İşlem tamamlandığında, veriler kalıcı olarak saklanır.<br><br>

### 📝 Transaction Kontrol Komutları
BEGIN TRANSACTION → Transaction başlatır.<br>
COMMIT → Transaction'ı tamamlar ve değişiklikleri kaydeder.<br>
ROLLBACK → Transaction'ı iptal eder ve önceki duruma döndürür.<br>
SAVEPOINT → Transaction içinde bir geri dönüş noktası oluşturur.<br><br>

✅ Bu yapı özellikle bankacılık işlemleri, stok yönetimi, sipariş işlemleri gibi kritik veri değişikliklerinde kullanılabilir.<br><br>

📍 Rollback İçin Örnek Kullanım:<br>
BEGIN TRANSACTION<br>
INSERT INTO TBLKATEGORI (AD) VALUES ('TV')<br>
INSERT INTO TBLKATEGORI (AD) VALUES ('HALI')<br>
SELECT * FROM TBLKATEGORI<br>
ROLLBACK<br><br>

Burada 2 tane daha kategori ekleme işlemi yaptık, ancak sorgunun sonuna ROLLBACK eklediğimiz için işlemi iptal etti. Sorgu sorunsuz çalışıyor gibi gözükse de aslında verilere baktığımız zaman bu iki veriyi eklemeyecektir.<br><br>

📍 Commit İçin Örnek Kullanım:<br>
BEGIN TRANSACTION<br>
INSERT INTO TBLURUN (AD,STOK) VALUES ('ÜRÜN1',25)<br>
INSERT INTO TBLURUN (AD,STOK) VALUES ('ÜRÜN2',40)<br>
SELECT * FROM TBLURUN<br>
COMMIT<br><br>

Burada 2 tane daha ürün ekleme işlemi yaptık, sorgunun sonuna COMMIT eklediğimiz için ekleme işlemini gerçekleştirecektir. <br><br>

<hr>

# 🖥️ Bölüm 19 - Fonksiyonlar
SQL fonksiyonları, verileri işlemek, manipüle etmek ve analiz etmek için kullanılan hazır komutlardır. SQL'de fonksiyonlar birleşik fonksiyonlar (aggregate functions) ve satır bazlı fonksiyonlar (scalar functions) olarak ikiye ayrılır.<br><br>

### 📝 1. Birleşik Fonksiyonlar (Aggregate Functions)
Bu fonksiyonlar, birden fazla satır üzerinde işlem yaparak tek bir değer döndürür.<br><br>

![image](https://github.com/user-attachments/assets/c86dc995-cc9f-49d1-befa-0e15a10bebae)

Birleşik fonksiyonları görmek için ilgili veri tabanımızda yer alan Programmability klasöründe yer alan Functions klasörüne geliyoruz. Ardından 4 tane daha klasör karşımıza çıkmaktadır. En altta yer alan System Functions klasörüne geliyoruz, ardından Aggregate Functions klasörüne tıklayarak buradaki tüm birleşik fonksiyonları görebiliriz.<br><br>

📍 <b>Örnek:</b> SELECT COUNT(*) FROM TBLURUN<br><br>

### 📝 2. Matematiksel Fonksiyonlar

![image](https://github.com/user-attachments/assets/d4fa3a90-a94b-4486-b63b-2ff68aea6257)
<br>
Buradaki matematiksel fonksiyonları görmek için bu kez Mathematical Functions klasörüne tıklayarak buradaki tüm matematiksel fonksiyonları görebiliriz.<br><br>

📍 <b>Örnek:</b> SELECT SQRT(STOK) FROM TBLURUN<br><br>

### 📝 3. Satır Bazlı Fonksiyonlar (Scalar Functions)
Bu fonksiyonlar her satır için işlem yapar ve tek bir değer döndürür.<br><br>

![image](https://github.com/user-attachments/assets/a54529c3-41a4-44de-a132-787c28b18617)
<br>
Buradaki fonksiyonlar String Functions klasöründe yer alan fonksiyonlardır.<br><br>

📍 <b>Örnek:</b> SELECT LEN(AD), AD FROM TBLURUN<br><br>

### ⚙️ SQL'de Kullanıcı Tanımlı Fonksiyonlar (UDF)
SQL Server'da fonksiyonlar geri dönüş değerine göre ikiye ayrılır:<br>

:one: Scalar (Tekil) Fonksiyonlar → Tek bir değer döndürür.<br>
:two: Table-Valued Fonksiyonlar → Bir tablo döndürür.<br><br>

Şimdi burada ilk olarak Scalar (Tekil) Fonksiyon oluşturacağız.<br><br>

<b>Örnek Fonksiyon Oluşturma:</b> Mevcut stokların üzerine örneğin 26 stok daha ekleyen sorgu.<br>
CREATE FUNCTION STOKARTTIR(@ADET INT)<br>
RETURNS INT<br>
AS<br>
BEGIN<br>
RETURN @ADET+26<br>
END<br><br>

### 📌 Açıklamalar:
🔹 Burada ilk olarak CREATE FUNCTION şeklinde bir fonksiyon oluşturuyoruz ve ismini STOKARTTIR olarak belirliyoruz. Parantez içerisinde parametrelerin tanımlanması gerekmektedir. Burada @ADET isminde bir değişken tanımlayıp INT tipinde belirliyoruz.<br>
🔹 Fonksiyon tanımlarken bu fonksiyonun geriye dönüş tipi olması gerekmektedir. Burada RETURNS ifadesini kullanıyoruz. @ADET değerini INT olarak belirlediğimiz için bize geriye INT değeri döndürecektir.<br>
🔹 Ardından AS ve BEGIN komutlarını yazıyoruz.<br>
🔹 İşlemimizi RETURN @ADET+26 olarak belirliyoruz ve END ile bitiriyoruz.<br><br>

![image](https://github.com/user-attachments/assets/f852535a-69cf-4f15-966b-beab9e5ed844)
<br>
✅ Oluşturduğumuz fonksiyon, Functions klasörüne geldiğimiz zaman Scalar-valued Functions klasöründe yer almaktadır.<br><br>

‼️ Fonksiyonu çağırmak için başına DBO.FonksiyonAdı(Burada FonksiyonAdı tanımlarken parantez içerisinde bir parametre gönderecek formatta tanımladığımız sütun adı) yazılmalıdır.<br><br>

📍 SELECT AD, STOK, DBO.STOKARTTIR(STOK) FROM TBLURUN<br><br>

📍 Bu kez String türünde bir fonksiyon oluşturalım:<br><br>

CREATE FUNCTION KUCUKHARF(@ISIM VARCHAR(20))<br>
RETURNS VARCHAR(20)<br>
AS<br>
BEGIN<br>
RETURN LOWER(@ISIM)<br>
END<br>
SELECT DBO.KUCUKHARF(AD),STOK FROM TBLURUN<br><br>

📍 <b>KDV Fonksiyonu Örneği:</b><br><br>

CREATE FUNCTION KDV(@FIYAT DECIMAL(18, 2))<br>
RETURNS DECIMAL(18, 2)<br>
AS<br>
BEGIN<br>
RETURN @FIYAT*1.18<br>
END<br>
SELECT AD,SATISFIYAT,DBO.KDV(SATISFIYAT) AS 'KDVLİ HALİ' FROM TBLURUN<br><br>

Şimdi burada Table-Valued Fonksiyon oluşturacağız.<br><br>

CREATE FUNCTION URUNBILGI(@URID INT)<br>
RETURNS TABLE<br>
AS<br>
RETURN SELECT * FROM TBLURUN WHERE URUNID=@URID<br><br>

![image](https://github.com/user-attachments/assets/e336310b-8c7b-41d8-a5b6-8d26c3adaa33)
<br>
Sorguyu çalıştırdıktan sonra bu kez Functions klasörüne gittiğimiz zaman Table-valued Functions klasöründe yer almaktadır.<br><br>

SELECT * FROM DBO.URUNBILGI(4)<br>
Buradaki ifadeyi çalıştırdığımız zaman 4 numaralı ID olan kaydı getirecektir.<br><br>

<hr>

# 🖥️ Bölüm 20 - Index
SQL'de Index (Dizin), veritabanındaki tablo sütunları üzerinde oluşturulan ve sorguların performansını artırmaya yardımcı olan bir veri yapısıdır. İndeksler, belirli sütunlarda arama, sıralama ve filtreleme işlemlerini hızlandırmak için kullanılır.<br><br>

## 📌 Index'in Amacı ve Avantajları
🔹 Hızlı Veri Erişimi: WHERE, JOIN, ORDER BY ve GROUP BY gibi sorguların daha hızlı çalışmasını sağlar.<br>
🔹 Daha Az Okuma İşlemi: Veritabanı, ilgili satırları daha az disk okuma işlemiyle bulabilir.<br>
🔹 Sorgu Performansını Artırır: Büyük veritabanlarında indekslenmiş sütunlara yapılan sorgular çok daha hızlı çalışır.<br><br>

### 📝 Index Türleri
<b>:one: Primary Key (Birincil Anahtar) Index</b><br>
PRIMARY KEY kısıtlaması ile otomatik olarak oluşturulur.<br>
Benzersiz ve NULL değer içeremez.<br><br>

<b>:two: Unique (Benzersiz) Index</b><br>
Tekrarlayan değerlerin bulunmasını engeller.<br>
UNIQUE kısıtlamasıyla aynı mantıkta çalışır.<br><br>

<b>:three: Clustered (Kümelenmiş) Index</b><br>
Verileri fiziksel olarak sıralar.<br>
Bir tabloda yalnızca bir tane olabilir.<br>
Primary Key varsa otomatik olarak oluşur.<br><br>

<b>:four: Non-Clustered (Kümelenmemiş) Index</b><br>
Veriyi fiziksel olarak sıralamaz, sadece gösterge (pointer) tutar.<br>
Bir tabloda birden fazla olabilir.<br>
Özellikle sık kullanılan sütunlara eklenir.<br><br>

<b>:five: Full-Text Index (Tam Metin İndeksi)</b><br>
Büyük metin verilerinde hızlı arama yapılmasını sağlar.<br><br>

📍 Şimdi burada bir tane Non-Clustered Index oluşturacağız.<br><br>

Kullanacağımız veri tabanı olan DbYeni veri tabanında yer alan Tables klasörüne geliyoruz. Burada TBLURUN üzerinde çalışacağız. TBLURUN tablosundan Indexes adlı klasörümüze sağ tıklayarak "New Index", ardından "Non-Clustered Index" olanı seçiyoruz.<br><br>

![image](https://github.com/user-attachments/assets/a52291b9-e996-430b-a87b-046a9add169f)
<br>
Karşımıza bu şekilde çıkacaktır. Sağ tarafta yer alan Add butonuna tıklıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/0d5321f1-7b55-48e7-aeb1-19011660a155)
<br>
Burada URUNID ve AD olan sütunları seçiyoruz ve OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/3560096d-529f-43f3-a0d5-434c047a252c)
<br>
Artık Non-Clustered Index işlemimiz hazır. OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/0ddb070e-0226-4a2e-ab32-2fdad4ebbbcc)
<br>
Non-Clustered Index hazır.<br><br>

📍 Burada bir tane tablo oluşturup 250.000 tane veri ekliyoruz.<br><br>
CREATE TABLE TABLO1<br>
(<br>
ID INT IDENTITY(1,1),<br>
AD VARCHAR(20)<br>
)<br><br>

📍 250.000 veri ekleme işlemi:<br><br>
DECLARE @SAYAC INT=1<br>
WHILE @SAYAC<250001<br>
BEGIN<br>
INSERT TABLO1<br>
SELECT 'Kitap' + CAST(@SAYAC AS VARCHAR(20))<br>
SET @SAYAC=@SAYAC+1<br>
END<br><br>

250.000 veri ekleme işlemini yaptık. Peki 210.000 veriyi nasıl sorgularız?<br>
SQL Server'da sorguların performans analizini yapmak için kullanılan iki önemli komut vardır:<br><br>

:one: <b>SET STATISTICS IO ON</b><br><br>
🔹 Girdi/Çıktı (I/O) istatistiklerini gösterir.<br>
🔹 Bir sorgunun kaç sayfa okuduğunu, yazdığını ve kaç kez okuma/yazma yaptığı gibi disk üzerindeki I/O işlemlerini raporlar.<br>
🔹 Özellikle indeks kullanımı, tablo taramaları (Table Scan), indeks taramaları (Index Scan) ve indeks aramaları (Index Seek) gibi performans detaylarını anlamak için kullanılır.<br><br>

:two: <b>SET STATISTICS TIME ON</b><br><br>
🔹 Sorgunun çalışma süresi hakkında bilgi verir.<br>
🔹 Sorgunun CPU süresi (işlemci süresi) ve toplam geçen süre (elapsed time) değerlerini raporlar.<br>
🔹 Hangi sorguların daha verimli çalıştığını anlamak için kullanılır.<br><br>

📍 Kullanımı şu şekildedir:<br><br>

SET STATISTICS IO ON<br>
SET STATISTICS TIME ON<br>
SELECT * FROM TABLO1 WHERE ID=210387<br><br>

![image](https://github.com/user-attachments/assets/b9cb8adf-0807-4e61-94ef-7bb1ca669be0)
<br>
Sorguyu çalıştırdıktan sonra Results kısmında çıktı bu şekilde görüntülenecektir, ancak sıralama hakkında daha detaylı bir şekilde görmek için Messages kısmına tıklıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/db09d85a-ab1c-4275-be26-93299cf1046c)
<br>
Burada Table TABLO1'de Scan count (aranan öğe sayısı) 1, logical reads 895 kısmı ise bu 210.387 numaralı ID'ye ulaşana kadar okuduğu sayfa sayısıdır.<br>
⚠️ Bu yöntem pek kullanışlı bir yöntem değildir, bunun yerine Clustered Index kullanacağız.<br><br>

📍 Clustered Index Kullanımı:<br>
CREATE CLUSTERED INDEX TABLOKAYITGETIR<br>
ON TABLO1(ID)<br><br>
Sorguyu çalıştırdıktan sonra tekrardan 210.387'nci kaydımızı çağırıyoruz.<br>
SELECT * FROM TABLO1 WHERE ID=210387<br><br>

![image](https://github.com/user-attachments/assets/62500096-a921-4e9f-a385-6243ee0739d1)
<br>

Logical reads bu kez sadece 3 sayfayı okudu, böylece işlemi daha kısa sürede halletmiş oldu.<br><br>

### ⚠️ Dikkat Edilmesi Gerekenler
✅ Fazla indeks kullanımı performansı düşürebilir, çünkü her INSERT, UPDATE ve DELETE işleminde indekslerin güncellenmesi gerekir.<br>
✅ Sadece sık kullanılan ve büyük tablolardaki sütunlara indeks eklenmelidir.<br>
✅ Veri okuma işlemlerini hızlandırırken, yazma işlemlerinde ekstra yük getirebilir.<br><br>

<hr>

# 🖥️ Bölüm 21 - Yedek Alma İşlemleri
SQL Server'da veritabanı yedeği almak için üç farklı yöntem vardır:<br><br>

## :one: <b>Backup Dosyası (BAK) ile Yedek Alma</b><br>
Bu yöntem, SQL Server’ın sunduğu en güvenilir yedekleme yöntemidir.<br><br>

Burada örnek olarak DbYeni adlı veri tabanımızdan Back Up Dosyası ile yedeğini alıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/aa5f263c-15de-4e0e-bfb1-cd4c652667e8)

DbYeni veri tabanımıza sağ tıklayıp Tasks kısmından Back Up olanı seçiyoruz.<br><br>

![image](https://github.com/user-attachments/assets/17234e10-404a-426f-a00c-f92989d333a7)
<br>
Karşımıza bu şekilde çıkmaktadır. Burada yedeğin alınacağı konum seçilebilir. Eğer konum kısmında herhangi bir değişiklik yapmazsak varsayılan değer olarak C sürücüsündeki SQL'in kurulu olduğu dizindeki Backup klasörü içinde kaydolacaktır. Burada herhangi bir değişiklik yapmıyoruz ve direkt OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/c03c4cdb-2f85-4af6-b8d7-9bab1c6f9ff3)
<br>
OK dedikten sonra karşımıza bu şekilde çıkacaktır. Back up ile yedek alma işlemi bu şekildedir. Dosyalar .bak uzantıyla kaydedilir.<br><br>

:warning: Back up dosyalarımıza erişmek için:<br><br>
C: --> Program Files --> Microsoft SQL Server<br><br>

![image](https://github.com/user-attachments/assets/264e13bd-0041-43f2-9976-d8ed38615b58)
<br>
Microsoft SQL Server klasörüne geldikten sonra buradaki klasörler sizde farklılık gösterebilir. Backup dosyalarına erişmek için bu pencerede yer alan klasörlerden en alttaki olanına tıklıyoruz. Ardından MSSQL klasörü karşınıza çıkacaktır. Tıklamaya devam ediyoruz.<br><br>

![image](https://github.com/user-attachments/assets/bb71ea7f-ab6d-4ba7-a955-0d1273a2cc14)
<br>
Ardından en üstte yer alan Backup klasörüne giriyoruz. Eğer ilk defa giriyorsanız "Şu an bu klasöre erişim izniniz yok." uyarısı çıkacaktır. Devam diyerek klasöre erişebilirsiniz.<br><br>

![image](https://github.com/user-attachments/assets/cd2d7218-f2d0-4810-b50e-1337fe7aed19)
<br>
Veri tabanının yedeklerini burada görebilirsiniz.<br><br>

❓ Peki Backup dosyasını tekrar veri tabanının içine nasıl Restore (dahil) edebiliriz?<br><br>

![image](https://github.com/user-attachments/assets/4cdab87e-8184-4d9f-b7ce-ba3051781f59)
<br>
Örneğin az önce yedekleme yaptığımız DbYeni veri tabanımızı silelim.<br><br>

![image](https://github.com/user-attachments/assets/cfcb14ea-e113-4324-b074-a27a8399dbdb)
<br>
Databases klasörüne sağ tıklayıp Restore Database diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/24932c96-6395-4ee3-8a93-9fb581b50b63)
<br>
Karşımıza bu şekilde çıkmaktadır. Buradan en üstte yer alan Database seçili halde gelecektir.<br><br>

![image](https://github.com/user-attachments/assets/fe68a167-8fc8-444b-b76e-dcd0ab8a11f3)
<br>
Buradan "<b>Device</b>" olanı seçiyoruz ve yanındaki üç noktaya tıklıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/f99a16b2-36e8-4efa-8c9b-85476ffdc175)
<br>
Karşımıza bu şekilde çıkacaktır. Sağda bulunan Add seçeneğine tıklıyoruz<br><br>

![image](https://github.com/user-attachments/assets/6afff728-303d-46a9-8f71-a8e3dbb4d044)
<br>
Burada daha önceden back up ile yedeklediğim veri tabanlarını içermektedir. Buradan DbYeni olanı seçiyoruz ve OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/2ac7666c-3a53-4bef-9a56-3e06eccb532a)
<br>
Tekrardan OK dedikten sonra karşımıza bu şekilde çıkmaktadır. Bir kez daha OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/c6134b81-831d-4db2-84d5-1a94133d748e)
<br>
Veri tabanımız tekrardan Restore edilmiştir.<br><br>

![image](https://github.com/user-attachments/assets/6066bcb0-a79d-421d-be66-b130ea2df3e3)
<br>
DbYeni veri tabanımız bu şekilde yeniden eklenmiştir.<br><br>

## :two: <b>Script (SQL DDL + DML) ile Yedek Alma</b><br>
Eğer .bak dosyası yerine, veritabanını SQL komutlarıyla yeniden oluşturmak isterseniz, SQL Server Management Studio (SSMS) kullanabilirsiniz.<br><br>

Tekrardan DbYeni üzerinden gidelim.<br><br>

![image](https://github.com/user-attachments/assets/a7200e8d-7e96-4078-a536-de794dc58dd1)
<br>
DbYeni veri tabanımıza sağ tıklayıp Tasks kısmından bu kez Generate Scripts seçiyoruz.<br><br>

![image](https://github.com/user-attachments/assets/3d3a2a7d-3a17-4086-accd-901f7cd590b7)
<br>
Karşımıza bu şekilde çıkmaktadır. Buradan herhangi bir ayarı değiştirmeden Next diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/79c8f0c4-9a04-40c4-bf90-b347caa57436)
<br>
Karşımıza bu şekilde çıkmaktadır. <br><br>

![image](https://github.com/user-attachments/assets/816a78e9-0145-465b-bc5b-ca40be4b655a)
<br>
Burada başlangıçta "Script entire database and all database objects" seçili halde çıkacaktır. Biz bunun yerine bir alttaki seçenek olan "Select specific database objects" olana tıklıyoruz. Bu seçeneği seçtikten sonra alttaki kutucuklar aktif hale gelecektir. Buradan sadece Tables seçeneğini seçmek bizim için yeterli olacaktır. Next diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/1e720671-0053-44b9-a137-d97284aa1be9)
<br>
Karşımıza bu şekilde çıkmaktadır. Bizim için en önemli kısım burası olacaktır. Sağ tarafta yer alan "<b>Advanced</b>" butonuna tıklıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/edded0e6-61eb-4b21-8357-f11524249380)
<br>
Buradan Types of data to script olanı buluyoruz. Burada bize başlangıçta Schema only olarak belirtmektedir. Eğer sadece Schema only seçersek tabloların Design kısmını almış oluruz.<br><br>

![image](https://github.com/user-attachments/assets/1fc797f4-9bbe-43f3-b62b-6b9b680d6687)
<br>
Buradan Schema and data olanı seçiyoruz ve OK diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/3dbb749b-3885-444a-b3ae-4961a521a575)
<br>
Ardından solda bulunan Save as script file olanı işaretliyoruz ve scriptimizin kaydolacağı yeri seçmemiz için sağda bulunan üç nokta olan butona tıklıyoruz. Buradan isterseniz yeni bir klasör açıp Scriptler diye kaydedebilir ve tüm scriptleri bu klasörün içine atabilirsiniz. Ardından Next diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/7eba5168-675c-4bed-b0de-5efa5d5991ec)
<br>
Karşımıza bu şekilde çıkmaktadır. Burada herhangi bir değişiklik yapmadan Next diyoruz ve biraz bekliyoruz.<br><br>

![image](https://github.com/user-attachments/assets/c37d0f10-8623-4b66-a429-754341879775)
<br>
Bekleme işlemi bittikten sonra script dosyasında herhangi bir sıkıntı olmazsa bu şekilde sorunsuz bir şekilde kaydedecektir. Finish diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/24fe0b7b-7e12-4960-8c02-37fe245c378a)
<br>
Yedeklediğimiz script dosyasını açıyoruz.<br><br>

![image](https://github.com/user-attachments/assets/b2f2a2a5-471d-462a-8f24-b78403a5b4d5)
<br>
Yedeklediğimiz script dosyası bu şekilde oluşturuldu. Script ile yedek alma işlemi bu şekildedir.<br><br>


## :three: <b>Transaction Log (LOG) ile Yedek Alma</b><br>
Eğer yalnızca yapılan işlemleri kaydetmek ve gerektiğinde geri döndürmek istiyorsanız, Transaction Log yedeği alabilirsiniz.<br><br>

![image](https://github.com/user-attachments/assets/bb71ea7f-ab6d-4ba7-a955-0d1273a2cc14)
<br>
Back up yedekleme işleminde dosyalar Backup klasöründe yer almaktaydı. Burada yapacağımız LOG yedekleme işleminde ise DATA klasöründen yapacağız. Aynı şekilde "Şu an bu klasöre erişim izniniz yok." uyarısı çıkacaktır. Devam diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/cd93628f-0cd3-44c3-a290-ffc3be7dbffc)
<br>
Burada kullanmış olduğumuz bütün veri tabanlarının LOG dosyaları mevcuttur.<br><br>

![image](https://github.com/user-attachments/assets/9529b331-3370-4437-b025-c14975bb416d)
<br>
DbYeni veri tabanı üzerinden devam edelim. Bu iki dosyayı kopyalıyoruz. Ardından istediğiniz herhangi bir klasöre yapıştırıyoruz.<br>
<strong>:warning: Eğer yapıştırma işleminde hata alıyorsanız Hizmetler bölümünde SQL'in çalışıyor olmasıdır.</strong><br><br>

![image](https://github.com/user-attachments/assets/41163fa7-927c-4e29-8342-cf0f28eb26f7)
<br>
Windows arama çubuğuna Hizmetler diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/86d92a2c-a078-493d-b29d-e818e73f4e43)
<br>
Buradan kullanmış olduğunuz SQL Server (MSSQL sürümü)'nü bulup sağ tıklayarak Durdur diyoruz.<br><br>

✅ Ardından tekrar LOG dosyalarını kopyalayıp istediğiniz yere yapıştırabilirsiniz. Ardından tekrar Hizmetler kısmında yer alan SQL Server sürümünüzü başlatmanız gerekmektedir.<br><br>

Başka makineden alınan LOG yedeklerini kendi makinemize kurmak için yapacağımız adımlar şu şekildedir:<br><br>

![image](https://github.com/user-attachments/assets/6d362229-5321-4c68-a5f8-2dbb3b12ba6d)
<br>
Databases klasörüne sağ tıklayıp Attach diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/361aaaf8-41a3-490a-b0ca-9372dcd60044)
<br>
Karşımıza bu şekilde çıkacaktır. Add diyoruz.<br><br>

![image](https://github.com/user-attachments/assets/9de76381-287d-46e7-b623-83dcbb706229)
<br>
Buradan çalışacağınız veri tabanını seçip OK diyorsunuz. LOG ile yedek alma işlemi bu şekildedir.<br><br>

<hr>

# 🖥️ Bölüm 22 - Job
SQL Job, SQL Server Agent tarafından yönetilen ve belirli bir zamanda otomatik olarak çalıştırılabilen görevlerdir. SQL Server Agent, SQL Server ile birlikte gelen bir hizmettir ve veritabanı yöneticilerinin rutin görevleri otomatikleştirmesine olanak tanır.<br><br>

:warning: <strong>SQL Express sürümünde SQL Server Agent bulunmamaktadır!</strong>

## 📌 SQL Job Kullanım Amaçları
SQL Job'lar genellikle aşağıdaki işlemleri otomatikleştirmek için kullanılır:<br><br>
✅ <b>Yedekleme İşlemleri:</b> Veritabanlarının belirli aralıklarla otomatik yedeğinin alınması.<br>
✅ <b>Bakım İşlemleri:</b> İndekslerin yeniden oluşturulması, istatistiklerin güncellenmesi.<br>
✅ <b>ETL Süreçleri:</b> Farklı veritabanları veya sistemler arasında veri aktarımı (Extract, Transform, Load işlemleri).<br>
✅ <b>Raporlama:</b> Belirli zamanlarda raporların oluşturulup e-posta ile gönderilmesi.<br>
✅ <b>Veri Temizleme:</b> Geçici veya eski kayıtların belirli zamanlarda temizlenmesi.<br><br>

## ⚙️ SQL Job Nasıl Oluşturulur?
1️⃣ SQL Server Management Studio (SSMS) açılır.<br>
2️⃣ SQL Server Agent altında Jobs sekmesine sağ tıklanır ve New Job… seçeneği seçilir.<br>
3️⃣ General sekmesinde işin adı ve açıklaması girilir.<br>
4️⃣ Steps sekmesinde, SQL komutları veya saklı prosedürler eklenir.<br>
5️⃣ Schedules sekmesinde, çalıştırma zamanı ve sıklığı belirlenir.<br>
6️⃣ Alerts ve Notifications sekmelerinde, hata durumunda bildirim alınması ayarlanabilir.<br>
7️⃣ Kaydedilip çalıştırıldığında, belirlenen zamanlarda otomatik olarak yürütülür.<br><br>

✅ SQL Job'ları, özellikle büyük ölçekli sistemlerde zamanlanmış işlemleri otomatikleştirmek için çok kullanışlıdır.
