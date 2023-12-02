CREATE TABLE Mahasiswa (
    NIM INT PRIMARY KEY,
    Nama VARCHAR(255),
    Jurusan VARCHAR(50),
    Semester INT
);

CREATE TABLE Dosen (
    KodeDosen INT PRIMARY KEY,
    Nama VARCHAR(255),
    Gelar VARCHAR(50)
);

CREATE TABLE MataKuliah (
    KodeMK INT PRIMARY KEY,
    NamaMK VARCHAR(255),
    Ruangan INT
);