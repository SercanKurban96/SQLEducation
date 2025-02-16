# ![259317_copy_database_instance_ms_rds_icon](https://github.com/user-attachments/assets/2838182a-9d33-48eb-abce-516dfa76ffcf) Sorgularla Adım Adım SQL Veri Tabanı Programlama

👋 Merhabalar, oluşturmuş olduğum bu repo, Udemy'de Murat Yücedağ tarafından verilen Sorgularla Adım Adım SQL Veri Tabanı Programlama adlı kursta yapmış olduğum SQL eğitimini içermektedir. Bu eğitimde SQL veri tabanı ile tablolar oluşturma, DDL ve DML komutlarından Job konusuna kadar anlatılmaktadır.
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
📍TBLOGRENCILER tablosunda şehir sayısına göre gruplandırma yapan sorgu<br>
SELECT OGRSEHIR,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRSEHIR
