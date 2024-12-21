# Project-KostQu  

Proyek ini adalah website untuk KostQu, platform pencarian kost, yang menggunakan database MySQL dengan nama database `kostqu`. File database tersebut sudah disediakan di folder `DATABASE` dengan nama `kostqu.sql`. Untuk pengembangan website ini, saya menggunakan WebStorm dan DataGrip. Jika Anda menggunakan editor lain seperti VS Code, mungkin terdapat perbedaan pada path atau konfigurasi tertentu.  

### Cara Menjalankan Proyek  
Karena GitHub tidak dapat menjalankan Node.js atau database MySQL secara langsung, Anda harus mengikuti langkah-langkah berikut untuk menjalankan proyek ini di mesin lokal Anda:  

1. **Unduh Repository:**  
   Unduh atau clone repository ini ke komputer Anda:  
   ```bash  
   git clone https://github.com/username/kostqu.git  
   cd kostqu  
   ```  

2. **Setup Database MySQL:**  
   - Pastikan Anda telah menginstal MySQL di komputer Anda.  
   - Buka tool seperti phpMyAdmin, DataGrip, atau MySQL Workbench.  
   - Buat database baru dengan nama `kostqu`.  
   - Impor file `kostqu.sql` yang terdapat di folder `DATABASE` ke dalam database tersebut.  

3. **Instalasi Node.js Dependencies:**  
   Jalankan perintah berikut di terminal untuk menginstal dependencies yang diperlukan:  
   ```bash  
   npm init -y  
   npm install mysql2  
   npm install express  
   npm install body-parser  
   npm install cors  
   npm install path  
   ```  

4. **Jalankan Server Node.js:**  
   Pastikan database MySQL telah berjalan, lalu jalankan server Node.js:  
   ```bash  
   node server.js  
   ```  

5. **Akses Website:**  
   Buka browser Anda dan akses website melalui URL:  
   ```
   http://localhost:3000  
   ```  

### Penjelasan Dependencies  
1. **`npm init -y`:** Menginisialisasi proyek Node.js dengan file `package.json`.  
2. **`npm install mysql2`:** Library untuk menghubungkan Node.js dengan MySQL.  
3. **`npm install express`:** Framework untuk membangun aplikasi web di Node.js.  
4. **`npm install body-parser`:** Middleware untuk memparsing body request, terutama untuk format JSON dan URL-encoded.  
5. **`npm install cors`:** Middleware untuk mengatur Cross-Origin Resource Sharing.  
6. **`npm install path`:** Library bawaan Node.js untuk menangani dan memanipulasi path file.  

---

### Catatan Penting  
- **Fitur yang Masih Dikembangkan:**  
  Website ini belum memiliki halaman untuk akun, informasi, dan notifikasi.  
