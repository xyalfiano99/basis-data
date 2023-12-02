SELECT 
    Dosen.KodeDosen,
    Dosen.Nama AS NamaDosen,
    Dosen.Gelar,
    MataKuliah.KodeMK,
    MataKuliah.NamaMK,
    MataKuliah.SKS
FROM 
    Dosen
JOIN 
    Pengajar ON Dosen.KodeDosen = Pengajar.KodeDosen
JOIN 
    MataKuliah ON Pengajar.KodeMK = MataKuliah.KodeMK;
