CREATE TABLE `alamat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `desa` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pendidikan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `taman_kanak_kanak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tk` varchar(255) NOT NULL,
  `alamat_tk` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `pendaftaran` 
ADD COLUMN `id_alamat` int(11) DEFAULT NULL,
ADD COLUMN `id_alamat_ayah` int(11) DEFAULT NULL,
ADD COLUMN `id_alamat_ibu` int(11) DEFAULT NULL,
ADD COLUMN `id_pendidikan_ayah` int(11) DEFAULT NULL,
ADD COLUMN `id_pendidikan_ibu` int(11) DEFAULT NULL,
ADD COLUMN `id_tk` int(11) DEFAULT NULL,
ADD COLUMN `asal_alamat_tk` text DEFAULT NULL,
ADD CONSTRAINT `fk_pendaftaran_alamat` FOREIGN KEY (`id_alamat`) REFERENCES `alamat` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `fk_pendaftaran_alamat_ayah` FOREIGN KEY (`id_alamat_ayah`) REFERENCES `alamat` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `fk_pendaftaran_alamat_ibu` FOREIGN KEY (`id_alamat_ibu`) REFERENCES `alamat` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `fk_pendaftaran_pendidikan_ayah` FOREIGN KEY (`id_pendidikan_ayah`) REFERENCES `pendidikan` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `fk_pendaftaran_pendidikan_ibu` FOREIGN KEY (`id_pendidikan_ibu`) REFERENCES `pendidikan` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `fk_pendaftaran_tk` FOREIGN KEY (`id_tk`) REFERENCES `taman_kanak_kanak` (`id`) ON DELETE SET NULL;