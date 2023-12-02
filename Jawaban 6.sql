SELECT 
    Dosen.KodeDosen,
    Dosen.Nama AS NamaDosen,
    Dosen.Gelar,
    Mahasiswa.NIM,
    Mahasiswa.Nama AS NamaMahasiswa,
    Mahasiswa.Jurusan,
    MataKuliah.KodeMK,
    MataKuliah.NamaMK,
    MataKuliah.Ruangan
FROM 
    Dosen
JOIN 
    Pengajar ON Dosen.NIP = Pengajar.NIP
JOIN 
    MataKuliah ON Pengajar.KodeMK = MataKuliah.KodeMK
JOIN 
    Kelas ON MataKuliah.KodeMK = Kelas.KodeMK
JOIN 
    Mahasiswa ON Kelas.NIM = Mahasiswa.NIM;
