const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const pool = require('../js/database');
const app = express();
const path = require('path');
app.use('/FotoKost', express.static(path.join(__dirname, 'FotoKost')));

const PORT = 3001;

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Root
app.get('/', (req, res) => {
    res.send('Welcome to KostQu!');
});


// Endpoint untuk mendapatkan daftar semua kost
app.get('/kosts', (req, res) => {
    const search = req.query.search; // Ambil query parameter 'search' dari request
    let query = `
        SELECT id_kost, nama_kost, alamat_jalan, no_hp, 
               (SELECT foto_url FROM foto_kost WHERE id_kost = k.id_kost LIMIT 1) AS foto_utama 
        FROM kost k
    `;

    // Jika ada parameter pencarian
    if (search) {
        query += ` WHERE nama_kost LIKE ? OR alamat_jalan LIKE ?`;
    }

    // Eksekusi query dengan parameter jika ada pencarian
    pool.query(query, search ? [`%${search}%`, `%${search}%`] : [], (err, results) => {
        if (err) {
            console.error('Error fetching kost list:', err);
            return res.status(500).json({ message: 'Error fetching kost list' });
        }
        res.json(results); // Kirim daftar kost ke klien
    });
});

// Endpoint untuk mendapatkan deskripsi kost berdasarkan ID
app.get('/kost/:id', (req, res) => {
    const idKost = req.params.id;

    const kostQuery = `
        SELECT
            nama_kost,
            deskripsi_kost,
            alamat_jalan,
            link_alamat_jalan,
            no_hp,
            link_whatsapp,
            link_instagram,
            biaya_harian,
            biaya_bulanan,
            biaya_tahunan
        FROM kost
        WHERE id_kost = ?
    `;


    const fotoQuery = `SELECT foto_url FROM foto_kost WHERE id_kost = ?`;

    pool.query(kostQuery, [idKost], (kostErr, kostResults) => {
        if (kostErr) {
            console.error('Error fetching kost data:', kostErr);
            return res.status(500).json({ message: 'Error fetching kost data' });
        }

        if (kostResults.length === 0) {
            return res.status(404).json({ message: 'Kost not found' });
        }

        pool.query(fotoQuery, [idKost], (fotoErr, fotoResults) => {
            if (fotoErr) {
                console.error('Error fetching photos:', fotoErr);
                return res.status(500).json({ message: 'Error fetching photos' });
            }

            const photos = fotoResults.map(row => row.foto_url); // Foto hanya nama file
            res.json({
                kost: kostResults[0],
                photos
            });
        });
    });
    });

// Endpoint untuk mendapatkan harga berdasarkan durasi
app.get('/kost/:id/price', (req, res) => {
    const { id } = req.params;
    const { duration } = req.query;

    pool.query(
        'SELECT biaya_harian, biaya_bulanan, biaya_tahunan FROM kost WHERE id_kost = ?',
        [id],
        (err, results) => {
            if (err) {
                console.error('Error fetching price:', err);
                return res.status(500).json({ message: 'Internal Server Error' });
            }

            if (results.length === 0) {
                return res.status(404).json({ message: 'Kost not found' });
            }

            let price = 0;
            if (duration === '1day') {
                price = results[0].biaya_harian;
            } else if (duration === '1month') {
                price = results[0].biaya_bulanan;
            } else if (duration === '1year') {
                price = results[0].biaya_tahunan;
            } else {
                return res.status(400).json({ message: 'Invalid duration' });
            }

            res.json({ price });
        }
    );
});



app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
