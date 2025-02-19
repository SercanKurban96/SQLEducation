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






