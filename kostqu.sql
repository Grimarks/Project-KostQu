create database kostqu;

use kostqu;
CREATE TABLE kost (
    id_kost INT AUTO_INCREMENT PRIMARY KEY, -- ID unik untuk setiap kost
    nama_kost VARCHAR(255) NOT NULL,        -- Nama kost
    deskripsi_kost TEXT,                    -- Deskripsi kost
    alamat_jalan VARCHAR(255) NOT NULL,     -- Alamat jalan kost
    link_alamat_jalan VARCHAR(255) NOT NULL,-- Link Gmap Jalan kost nya
    no_hp VARCHAR(15),                      -- Nomor HP kost
    link_whatsapp VARCHAR(255),             -- Link Whatsapp kost
    link_instagram VARCHAR(255),            -- Link Instagram kost
    biaya_harian DECIMAL(10, 2),            -- Biaya penginapan per hari
    biaya_bulanan DECIMAL(10, 2),           -- Biaya penginapan per bulan
    biaya_tahunan DECIMAL(10, 2)            -- Biaya penginapan per tahun
);

CREATE TABLE foto_kost (
    id_kost INT,                            -- Relasi ke tabel kost
    foto_url VARCHAR(255),                  -- URL atau path file foto
    FOREIGN KEY (id_kost) REFERENCES kost(id_kost) ON DELETE CASCADE
);

INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Alya',
    'Temukan kenyamanan tinggal di kost dengan ukuran kamar 3x4 meter, dilengkapi fasilitas premium seperti tempat tidur, lemari pakaian, meja belajar, AC. Kost ini menawarkan suasana yang tenang dan nyaman, cocok untuk mahasiswa dan pekerja profesional. Hanya 5 menit dari kampus, pusat perbelanjaan, dan akses mudah ke transportasi umum—menjadikannya pilihan ideal untuk investasi jangka panjang di kawasan yang terus berkembang.',
    'Muhajirin IV, Gg. Buyut V Gg. Keluarga No.RT 58/13, Lorok Pakjo, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30128',
    'https://maps.app.goo.gl/by2tapqEUzjoQYUGA',
    '082282053827',
    'https://wa.me/6282282053827',
    NULL, -- Instagram link kosong (tidak diisi)
    100000.00,
    2500000.00,
    25000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES
    (1, 'A1.JPG'),
    (1, 'A2.JPG'),
    (1, 'A3.JPG'),
    (1, 'A4.JPG');

INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Rizky Kost',
    'Temukan kenyamanan tinggal di kost dengan ukuran kamar 3x4 meter, dilengkapi fasilitas premium seperti tempat tidur, lemari pakaian, meja belajar, AC. Kost ini menawarkan suasana yang tenang dan nyaman, cocok untuk mahasiswa dan pekerja profesional. Hanya 5 menit dari kampus, pusat perbelanjaan, dan akses mudah ke transportasi umum—menjadikannya pilihan ideal untuk investasi jangka panjang di kawasan yang terus berkembang.',
    'Muhajirin IV, Gg. Buyut V Gg. Keluarga No.RT 58/13, Lorok Pakjo, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30128',
    'https://maps.app.goo.gl/4uUscQoonxK8muRWA',
    '085377888951',
    'https://wa.me/6285377888951',
    NULL,
    100000.00,
    2500000.00,
    25000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES
    (2, 'B1.JPG'),
    (2, 'B2.JPG'),
    (2, 'B3.JPG'),
    (2, 'B4.JPG');

INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kosyarif Homestay',
    'Temukan kenyamanan tinggal di kost dengan ukuran kamar 3x4 meter, dilengkapi fasilitas premium seperti tempat tidur, lemari pakaian, meja belajar, AC. Kost ini menawarkan suasana yang tenang dan nyaman, cocok untuk mahasiswa dan pekerja profesional. Hanya 5 menit dari kampus, pusat perbelanjaan, dan akses mudah ke transportasi umum—menjadikannya pilihan ideal untuk investasi jangka panjang di kawasan yang terus berkembang.',
    'Jl. Kelinci No.2983, Bukit Baru, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30131',
    'https://maps.app.goo.gl/HDmMp53afZFZHE5JA',
    '082282053827',
    'https://wa.me/6282282053827',
    NULL,
    120000.00,   -- Biaya harian
    2800000.00,  -- Biaya bulanan
    30000000.00  -- Biaya tahunan
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES
    (LAST_INSERT_ID(), 'C1.JPG'),
    (LAST_INSERT_ID(), 'C2.JPG'),
    (LAST_INSERT_ID(), 'C3.JPG'),
    (LAST_INSERT_ID(), 'C4.JPG');

# Semua data dibawah ini adalah data dummy yang dibuat oleh AI, saya malas nyari data dummy hehehe
-- Data Dummy 1
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Ayu',
    'Kost nyaman dengan ukuran kamar 3x3 meter, dilengkapi fasilitas dasar seperti tempat tidur, lemari pakaian, kipas angin, dan akses dapur bersama. Dekat dengan minimarket dan halte bus, cocok untuk pelajar dan pekerja dengan budget ekonomis.',
    'Jalan Sukarame No.12, Kecamatan Sukarame, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example1',
    '081212345678',
    'https://wa.me/6281212345678',
    'https://instagram.com/kostayu',
    80000.00,
    2000000.00,
    22000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy1.jpeg');

-- Data Dummy 2
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Mawar',
    'Kost eksklusif untuk wanita dengan fasilitas lengkap: kamar mandi dalam, WiFi, dan AC. Suasana nyaman, aman, dan hanya 10 menit dari pusat kota.',
    'Jalan Veteran No.15, Kecamatan Kemuning, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example2',
    '081377654321',
    'https://wa.me/6281377654321',
    NULL,
    120000.00,
    3000000.00,
    35000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy2.jpeg');

-- Data Dummy 3
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Citra',
    'Kost dengan lingkungan bersih dan tenang, fasilitas standar seperti kamar mandi luar, area parkir, dan akses WiFi gratis. Cocok untuk mahasiswa dan karyawan.',
    'Jalan Basuki Rahmat No.88, Kecamatan IB I, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example3',
    '089812345678',
    'https://wa.me/6289812345678',
    'https://instagram.com/kostcitra',
    60000.00,
    1800000.00,
    20000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy3.jpeg');

-- Data Dummy 4
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Melati',
    'Kost sederhana dengan fasilitas tempat tidur, meja, lemari, dan kipas angin. Dekat dengan pasar dan angkutan umum.',
    'Jalan Pangeran Antasari No.29, Kecamatan Plaju, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example4',
    '085678912345',
    'https://wa.me/6285678912345',
    NULL,
    50000.00,
    1500000.00,
    18000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy4.jpeg');

-- Data Dummy 5
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Anggrek',
    'Kost strategis di pusat kota dengan fasilitas kamar mandi dalam, WiFi cepat, dan tempat parkir motor. Cocok untuk mahasiswa dan pekerja.',
    'Jalan Kolonel Haji Burlian No.45, Kecamatan Alang-Alang Lebar, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example5',
    '083812345678',
    'https://wa.me/6283812345678',
    'https://instagram.com/kostanggrek',
    110000.00,
    2800000.00,
    30000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy5.jpeg');

-- Data Dummy 6
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Orchid',
    'Kost nyaman dengan akses WiFi, kamar mandi luar, dan dapur bersama. Lokasi strategis dekat kampus dan pusat perbelanjaan.',
    'Jalan Demang Lebar Daun No.17, Kecamatan Ilir Barat II, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example6',
    '081234567890',
    'https://wa.me/6281234567890',
    'https://instagram.com/kostorchid',
    75000.00,
    2200000.00,
    25000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy6.jpeg');

-- Data Dummy 7
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Jasmine',
    'Kost eksklusif dengan kamar mandi dalam, AC, dan area parkir mobil. Suasana tenang dan aman untuk keluarga atau pasangan suami istri.',
    'Jalan Lingkar Selatan No.22, Kecamatan Kalidoni, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example7',
    '082345678910',
    'https://wa.me/6282345678910',
    NULL,
    150000.00,
    3500000.00,
    40000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy7.jpeg');

-- Data Dummy 8
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Bunga Raya',
    'Kost sederhana dengan fasilitas tempat tidur, lemari, dan kipas angin. Lokasi dekat dengan stasiun LRT dan pasar tradisional.',
    'Jalan Angkatan 66 No.3, Kecamatan Kemuning, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example8',
    '083456789012',
    'https://wa.me/6283456789012',
    'https://instagram.com/kostbungaraya',
    55000.00,
    1600000.00,
    19000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy8.jpeg');

-- Data Dummy 9
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Teratai',
    'Kost budget dengan fasilitas standar seperti kasur, meja belajar, dan kamar mandi luar. Cocok untuk mahasiswa atau pekerja.',
    'Jalan Kapten A. Rivai No.8, Kecamatan Ilir Timur I, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example9',
    '084567890123',
    'https://wa.me/6284567890123',
    NULL,
    40000.00,
    1200000.00,
    14000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy9.jpeg');

-- Data Dummy 10
INSERT INTO kost (nama_kost, deskripsi_kost, alamat_jalan, link_alamat_jalan, no_hp, link_whatsapp, link_instagram, biaya_harian, biaya_bulanan, biaya_tahunan)
VALUES (
    'Kost Dahlia',
    'Kost nyaman dengan fasilitas kamar mandi dalam, WiFi, AC, dan area parkir. Dekat dengan mal dan pusat kuliner.',
    'Jalan Letkol Iskandar No.9, Kecamatan Bukit Kecil, Kota Palembang, Sumatera Selatan',
    'https://maps.app.goo.gl/example10',
    '085678901234',
    'https://wa.me/6285678901234',
    'https://instagram.com/kostdahlia',
    130000.00,
    3000000.00,
    36000000.00
);

INSERT INTO foto_kost (id_kost, foto_url)
VALUES (LAST_INSERT_ID(), 'dy10.jpeg');
