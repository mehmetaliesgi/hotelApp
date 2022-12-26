# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...




* Bir asset dosyasını genel olarak bütün projeye etki etmesi amaçlanıyorsa asset dosyalarının başına "/" karakteri eklenmelidir.
* örnek olarak `<link href="/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">`
* html_safe ne için kullanılır? Ne işe yarar? 
* html_safe ruby html içeren bir cümleciği otomatik olarak kendisi şifreler. Bu html_safe metodu ruby'nin şifrelemiş olduğu kod satırını çözümler. 

* Sadece istediğiniz nitelikleri almak için bir grup kayıt yüklemeden bir veya daha fazla nitelik seçmek için #pluck'ı kısayol olarak kullanın.
* <% room.services.pluck(:icon).each do |icon| %>
*    <%= icon.html_safe %>  
* <% end %>

* empty?, nil?, present? bunların farkı nedir?
* empty? => Eğer objemiz içinde bir değer varsa obje.empty? ifadesi bize false döndürür. Eğer obje var ve içinde değer yoksa bu sefer sonuç true döner.
* nil? => Obje var fakat objenin içinde her hangi bir değer tutacak bir alan bile yoksa bu sefer nil? true, bir değer var ve bu değer boş bile olsa nil? false olur.
* present? => Bir nesne boş değilse obje.present? true, boşsa false değerini döndürür. Empty nin tam tersidir.

* fly.io postgres database bağlanmak için 'flyctl postgres connect -a app-name-db' komutunu kullanabiliriz.
* productiona çıktığımız bir uygulama için mailer yapılandırmasını unutmayalım. production.rb dosyasına  'config.action_mailer.default_url_options = { :host => "https://hotel-app.fly.* dev/" }' eklememiz yeterli olacaktır.
* eğer fly.io kullanacaksan ve test ortamındaki hali hazırda bulunan Active Storage dosyalarınıda taşımak istiyorsan 'volumes' özelliğine bak.
* .env dosyasındaki bir secret_key production ortamına tanımlanmamışsa API key gibi, bunu fly.io da 'flyctl secrets set SENDGRID_APIKEY=APIKEY_DEĞERİ' komutu ile set edilebilir.