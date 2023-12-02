
CREATE TABLE Mahasiswa (
    NIM INT PRIMARY KEY,
    Nama VARCHAR(255),
    Jurusan VARCHAR(50),
    Semester INT
);


CREATE TABLE Dosen (
    NIP INT PRIMARY KEY,
    Nama VARCHAR(255),
    Jabatan VARCHAR(50)
);


CREATE TABLE MataKuliah (
    KodeMK INT PRIMARY KEY,
    NamaMK VARCHAR(255),
    SKS INT
);


CREATE TABLE Kelas (
    ID INT PRIMARY KEY,
    NIM INT,
    KodeMK INT,
    FOREIGN KEY (NIM) REFERENCES Mahasiswa(NIM),
    FOREIGN KEY (KodeMK) REFERENCES MataKuliah(KodeMK)
);


CREATE TABLE Pengajar (
    ID INT PRIMARY KEY,
    NIP INT,
    KodeMK INT,
    FOREIGN KEY (NIP) REFERENCES Dosen(NIP),
    FOREIGN KEY (KodeMK) REFERENCES MataKuliah(KodeMK)
);


SELECT * FROM Mahasiswa;


SELECT * FROM Dosen;


SELECT * FROM MataKuliah;
