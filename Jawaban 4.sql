SELECT 
    Mahasiswa.NIM,
    Mahasiswa.Nama AS NamaMahasiswa,
    Mahasiswa.Jurusan,
    Mahasiswa.Semester,
    MataKuliah.KodeMK,
    MataKuliah.NamaMK,
    MataKuliah.SKS
FROM 
    Mahasiswa
JOIN 
    Kelas ON Mahasiswa.NIM = Kelas.NIM
JOIN 
    MataKuliah ON Kelas.KodeMK = MataKuliah.KodeMK;
