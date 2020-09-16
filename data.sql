--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _berita; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.berita (
    id_berita smallint,
    id_user smallint,
    id_kategori smallint,
    updater character varying(1) DEFAULT NULL::character varying,
    slug_berita character varying(28) DEFAULT NULL::character varying,
    judul_berita character varying(28) DEFAULT NULL::character varying,
    isi character varying(1700) DEFAULT NULL::character varying,
    status_berita character varying(7) DEFAULT NULL::character varying,
    jenis_berita character varying(10) DEFAULT NULL::character varying,
    keywords character varying(156) DEFAULT NULL::character varying,
    gambar character varying(108) DEFAULT NULL::character varying,
    icon character varying(20) DEFAULT NULL::character varying,
    hits smallint,
    urutan smallint,
    tanggal_mulai character varying(1) DEFAULT NULL::character varying,
    tanggal_selesai character varying(1) DEFAULT NULL::character varying,
    tanggal_post character varying(19) DEFAULT NULL::character varying,
    tanggal_publish character varying(19) DEFAULT NULL::character varying,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.berita OWNER TO lnxherptaqgxqb;

--
-- Name: _download; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.download (
    id_download smallint,
    id_kategori_download smallint,
    id_user smallint,
    judul_download character varying(38) DEFAULT NULL::character varying,
    jenis_download character varying(8) DEFAULT NULL::character varying,
    isi character varying(45) DEFAULT NULL::character varying,
    gambar character varying(35) DEFAULT NULL::character varying,
    website character varying(24) DEFAULT NULL::character varying,
    hits smallint,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.download OWNER TO lnxherptaqgxqb;

--
-- Name: _galeri; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.galeri (
    id_galeri smallint,
    id_kategori_galeri smallint,
    id_user smallint,
    judul_galeri character varying(34) DEFAULT NULL::character varying,
    jenis_galeri character varying(8) DEFAULT NULL::character varying,
    isi character varying(85) DEFAULT NULL::character varying,
    gambar character varying(37) DEFAULT NULL::character varying,
    website character varying(24) DEFAULT NULL::character varying,
    hits character varying(1) DEFAULT NULL::character varying,
    popup_status character varying(7) DEFAULT NULL::character varying,
    urutan smallint,
    status_text character varying(2) DEFAULT NULL::character varying,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.galeri OWNER TO lnxherptaqgxqb;

--
-- Name: _gambar_produk; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.gambar_produk (
    id_gambar_produk smallint,
    id_user smallint,
    id_produk smallint,
    nama_gambar_produk character varying(1) DEFAULT NULL::character varying,
    gambar character varying(32) DEFAULT NULL::character varying,
    keterangan character varying(1) DEFAULT NULL::character varying,
    urutan smallint,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.gambar_produk OWNER TO lnxherptaqgxqb;

--
-- Name: _kategori; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.kategori (
    id_kategori smallint,
    id_user smallint,
    slug_kategori character varying(24) DEFAULT NULL::character varying,
    nama_kategori character varying(24) DEFAULT NULL::character varying,
    urutan smallint,
    hits smallint,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.kategori OWNER TO lnxherptaqgxqb;

--
-- Name: _kategori_download; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.kategori_download (
    id_kategori_download smallint,
    slug_kategori_download character varying(17) DEFAULT NULL::character varying,
    nama_kategori_download character varying(17) DEFAULT NULL::character varying,
    urutan smallint
);


ALTER TABLE public.kategori_download OWNER TO lnxherptaqgxqb;

--
-- Name: _kategori_galeri; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.kategori_galeri (
    id_kategori_galeri smallint,
    slug_kategori_galeri character varying(15) DEFAULT NULL::character varying,
    nama_kategori_galeri character varying(15) DEFAULT NULL::character varying,
    urutan smallint
);


ALTER TABLE public.kategori_galeri OWNER TO lnxherptaqgxqb;

--
-- Name: _kategori_produk; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.kategori_produk (
    id_kategori_produk smallint,
    nama_kategori_produk character varying(35) DEFAULT NULL::character varying,
    slug_kategori_produk character varying(35) DEFAULT NULL::character varying,
    urutan smallint,
    keterangan character varying(42) DEFAULT NULL::character varying,
    gambar character varying(37) DEFAULT NULL::character varying,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.kategori_produk OWNER TO lnxherptaqgxqb;

--
-- Name: _konfigurasi; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.konfigurasi (
    id_konfigurasi smallint,
    namaweb character varying(10) DEFAULT NULL::character varying,
    nama_singkat character varying(20) DEFAULT NULL::character varying,
    tagline character varying(51) DEFAULT NULL::character varying,
    tagline2 character varying(51) DEFAULT NULL::character varying,
    tentang character varying(1427) DEFAULT NULL::character varying,
    deskripsi character varying(383) DEFAULT NULL::character varying,
    website character varying(26) DEFAULT NULL::character varying,
    email character varying(26) DEFAULT NULL::character varying,
    email_cadangan character varying(26) DEFAULT NULL::character varying,
    alamat character varying(93) DEFAULT NULL::character varying,
    telepon bigint,
    hp character varying(14) DEFAULT NULL::character varying,
    fax bigint,
    logo character varying(36) DEFAULT NULL::character varying,
    icon character varying(30) DEFAULT NULL::character varying,
    keywords character varying(65) DEFAULT NULL::character varying,
    metatext character varying(1) DEFAULT NULL::character varying,
    facebook character varying(37) DEFAULT NULL::character varying,
    twitter character varying(31) DEFAULT NULL::character varying,
    instagram character varying(34) DEFAULT NULL::character varying,
    google_plus character varying(56) DEFAULT NULL::character varying,
    nama_facebook character varying(10) DEFAULT NULL::character varying,
    nama_twitter character varying(10) DEFAULT NULL::character varying,
    nama_instagram character varying(10) DEFAULT NULL::character varying,
    nama_google_plus character varying(1) DEFAULT NULL::character varying,
    singkatan character varying(2) DEFAULT NULL::character varying,
    google_map character varying(378) DEFAULT NULL::character varying,
    judul_1 character varying(21) DEFAULT NULL::character varying,
    pesan_1 character varying(10) DEFAULT NULL::character varying,
    judul_2 character varying(27) DEFAULT NULL::character varying,
    pesan_2 character varying(12) DEFAULT NULL::character varying,
    judul_3 character varying(15) DEFAULT NULL::character varying,
    pesan_3 character varying(15) DEFAULT NULL::character varying,
    judul_4 character varying(14) DEFAULT NULL::character varying,
    pesan_4 character varying(17) DEFAULT NULL::character varying,
    judul_5 character varying(21) DEFAULT NULL::character varying,
    pesan_5 character varying(7) DEFAULT NULL::character varying,
    judul_6 character varying(14) DEFAULT NULL::character varying,
    pesan_6 character varying(9) DEFAULT NULL::character varying,
    isi_1 character varying(84) DEFAULT NULL::character varying,
    isi_2 character varying(75) DEFAULT NULL::character varying,
    isi_3 character varying(67) DEFAULT NULL::character varying,
    isi_4 character varying(95) DEFAULT NULL::character varying,
    isi_5 character varying(60) DEFAULT NULL::character varying,
    isi_6 character varying(69) DEFAULT NULL::character varying,
    link_1 character varying(1) DEFAULT NULL::character varying,
    link_2 character varying(1) DEFAULT NULL::character varying,
    link_3 character varying(1) DEFAULT NULL::character varying,
    link_4 character varying(1) DEFAULT NULL::character varying,
    link_5 character varying(1) DEFAULT NULL::character varying,
    link_6 character varying(1) DEFAULT NULL::character varying,
    javawebmedia character varying(1730) DEFAULT NULL::character varying,
    gambar character varying(34) DEFAULT NULL::character varying,
    video character varying(11) DEFAULT NULL::character varying,
    rekening character varying(660) DEFAULT NULL::character varying,
    prolog_topik character varying(271) DEFAULT NULL::character varying,
    prolog_program character varying(1) DEFAULT NULL::character varying,
    prolog_sekretariat character varying(495) DEFAULT NULL::character varying,
    prolog_aksi character varying(1) DEFAULT NULL::character varying,
    prolog_kolaborasi character varying(352) DEFAULT NULL::character varying,
    prolog_sebaran character varying(1) DEFAULT NULL::character varying,
    gambar_berita character varying(26) DEFAULT NULL::character varying,
    prolog_agenda character varying(151) DEFAULT NULL::character varying,
    prolog_wawasan character varying(231) DEFAULT NULL::character varying,
    protocol character varying(4) DEFAULT NULL::character varying,
    smtp_host character varying(27) DEFAULT NULL::character varying,
    smtp_port smallint,
    smtp_timeout smallint,
    smtp_user character varying(28) DEFAULT NULL::character varying,
    smtp_pass character varying(16) DEFAULT NULL::character varying,
    judul_pembayaran character varying(24) DEFAULT NULL::character varying,
    isi_pembayaran character varying(1069) DEFAULT NULL::character varying,
    gambar_pembayaran character varying(11) DEFAULT NULL::character varying,
    link_bawah_peta character varying(1) DEFAULT NULL::character varying,
    text_bawah_peta character varying(1) DEFAULT NULL::character varying,
    cara_pesan character varying(18) DEFAULT NULL::character varying,
    id_user smallint,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.konfigurasi OWNER TO lnxherptaqgxqb;

--
-- Name: _pemesanan; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.pemesanan (
    id_pemesanan smallint,
    id_user smallint,
    id_produk smallint,
    id_rekening character varying(1) DEFAULT NULL::character varying,
    kode_transaksi character varying(15) DEFAULT NULL::character varying,
    token_transaksi character varying(32) DEFAULT NULL::character varying,
    tanggal_order character varying(10) DEFAULT NULL::character varying,
    nomor_transaksi smallint,
    status_pemesanan character varying(10) DEFAULT NULL::character varying,
    nama_pemesan character varying(18) DEFAULT NULL::character varying,
    telepon_pemesan bigint,
    email_pemesan character varying(22) DEFAULT NULL::character varying,
    alamat character varying(22) DEFAULT NULL::character varying,
    jumlah_produk smallint,
    harga_produk integer,
    total_harga integer,
    ongkir character varying(6) DEFAULT NULL::character varying,
    total_biaya character varying(6) DEFAULT NULL::character varying,
    tanggal_pemesanan character varying(19) DEFAULT NULL::character varying,
    cara_bayar character varying(8) DEFAULT NULL::character varying,
    tanggal_bayar character varying(10) DEFAULT NULL::character varying,
    bukti character varying(18) DEFAULT NULL::character varying,
    jumlah character varying(6) DEFAULT NULL::character varying,
    pengirim character varying(6) DEFAULT NULL::character varying,
    nama_bank_pengirim character varying(3) DEFAULT NULL::character varying,
    nomor_rekening_pengirim character varying(7) DEFAULT NULL::character varying,
    keterangan character varying(1) DEFAULT NULL::character varying,
    tanggal_post character varying(19) DEFAULT NULL::character varying,
    tanggal_update character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.pemesanan OWNER TO lnxherptaqgxqb;

--
-- Name: _produk; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.produk (
    id_produk smallint,
    id_user smallint,
    id_client character varying(1) DEFAULT NULL::character varying,
    id_kategori_produk smallint,
    slug_produk character varying(45) DEFAULT NULL::character varying,
    kode_produk character varying(9) DEFAULT NULL::character varying,
    nama_produk character varying(47) DEFAULT NULL::character varying,
    status_produk character varying(7) DEFAULT NULL::character varying,
    satuan character varying(3) DEFAULT NULL::character varying,
    urutan character varying(1) DEFAULT NULL::character varying,
    deskripsi character varying(47) DEFAULT NULL::character varying,
    isi character varying(2363) DEFAULT NULL::character varying,
    harga_jual integer,
    harga_beli integer,
    harga_terendah character varying(5) DEFAULT NULL::character varying,
    harga_tertinggi character varying(5) DEFAULT NULL::character varying,
    gambar character varying(37) DEFAULT NULL::character varying,
    keywords character varying(47) DEFAULT NULL::character varying,
    mulai_diskon character varying(1) DEFAULT NULL::character varying,
    selesai_diskon character varying(1) DEFAULT NULL::character varying,
    besar_diskon character varying(2) DEFAULT NULL::character varying,
    jenis_diskon character varying(10) DEFAULT NULL::character varying,
    jumlah_order_min character varying(1) DEFAULT NULL::character varying,
    jumlah_order_max character varying(3) DEFAULT NULL::character varying,
    stok character varying(3) DEFAULT NULL::character varying,
    berat character varying(3) DEFAULT NULL::character varying,
    ukuran character varying(15) DEFAULT NULL::character varying,
    hits character varying(2) DEFAULT NULL::character varying,
    tanggal_post character varying(19) DEFAULT NULL::character varying,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.produk OWNER TO lnxherptaqgxqb;

--
-- Name: _rekening; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.rekening (
    id_rekening smallint,
    nama_bank character varying(22) DEFAULT NULL::character varying,
    nomor_rekening character varying(16) DEFAULT NULL::character varying,
    atas_nama character varying(18) DEFAULT NULL::character varying,
    gambar character varying(20) DEFAULT NULL::character varying,
    urutan smallint,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.rekening OWNER TO lnxherptaqgxqb;

--
-- Name: _users; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.users (
    id_user smallint,
    nama character varying(18) DEFAULT NULL::character varying,
    email character varying(22) DEFAULT NULL::character varying,
    username character varying(12) DEFAULT NULL::character varying,
    password character varying(40) DEFAULT NULL::character varying,
    akses_level character varying(5) DEFAULT NULL::character varying,
    kode_rahasia character varying(1) DEFAULT NULL::character varying,
    gambar character varying(18) DEFAULT NULL::character varying,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.users OWNER TO lnxherptaqgxqb;

--
-- Name: _video; Type: TABLE; Schema: public; Owner: lnxherptaqgxqb
--

CREATE TABLE public.video (
    id_video smallint,
    judul character varying(100) DEFAULT NULL::character varying,
    posisi character varying(8) DEFAULT NULL::character varying,
    keterangan character varying(100) DEFAULT NULL::character varying,
    video character varying(11) DEFAULT NULL::character varying,
    urutan smallint,
    bahasa character varying(9) DEFAULT NULL::character varying,
    id_user smallint,
    tanggal character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.video OWNER TO lnxherptaqgxqb;

--
-- Data for Name: _berita; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.berita (id_berita, id_user, id_kategori, updater, slug_berita, judul_berita, isi, status_berita, jenis_berita, keywords, gambar, icon, hits, urutan, tanggal_mulai, tanggal_selesai, tanggal_post, tanggal_publish, tanggal) FROM stdin;
7	4	5		pengajar-praktisi-dosen	Pengajar Praktisi & Dosen	<p>Para pengajar adalah praktisi dan dosen yang berpengalaman di bidangnya. Mereka rata-rata telah berpengalaman di bidangnya mulai dari 2-10 tahun.</p>\r\n<p>Anda akan belajar secara langsung dari praktisi yang sudah berpengalaman. Mudah dipahami, terstruktur dan bisa konsultasi kapan pun Anda mau.</p>	Publish	Keunggulan	Para pengajar adalah praktisi  dan dosen yang berpengalaman di bidangnya.	Kursus_Banner-011.jpg	fa fa-graduation-cap	26	2			2019-11-05 05:31:59	2019-11-05 05:30:24	2020-02-18 08:09:56
8	4	5		pembuatan-website-profil	Pembuatan Website Profil	<p>Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>&nbsp;</h3>	Publish	Layanan	Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.	favpng-chart-data-analysis-statistics-m2hy3dsv-1591960588.png	fa fa-globe	82	0			2020-01-16 08:04:58	2020-01-16 08:01:54	2020-06-12 13:16:28
9	4	5		web-based-application	Web Based Application	<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>	Publish	Layanan	Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.	3169210-1591960618.jpg	fa fa-laptop	69	2			2020-01-16 08:08:16	2020-01-16 08:07:46	2020-06-12 13:16:58
10	4	5		profil-java-web-media	Profil Java Web Media	<h2>Java Web Media</h2>\r\n<p>Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.</p>\r\n<h2>Tentang Andoyo</h2>\r\n<p><strong>Andoyo&nbsp;</strong>adalah pendiri Java Web Media. Aktif mengajar Graphic Design, Web Design dan Web Programming. Lahir di Blora, 22 Februari 1983.</p>\r\n<p>Lulus dengan predikat Wisudawan Terbaik dari Teknik Sipil&nbsp; Universitas Negeri Semarang pada tahun 2006. Pernah bekerja sebagai Site Engineer di sebuah perusahaan kontraktor. Mulai blogging sejak masih bekerja sebagai kontraktor di tahun 2008.</p>\r\n<p>Kecintaanya pada teknologi web akhirnya mengarahkannya untuk mempelajari Graphic Design dan Web Design di Natcoll Design Technology, Wellington New Zealand di tahun 2009. Semenjak itu, Graphic Design dan Web Design menjadi salah satu&nbsp;<em>passion&nbsp;</em>di dalam hidupnya.</p>\r\n<p>Saat ini aktivitas selain mengajar adalah mengelola usahanya yang bergerak di bidang graphic design, web design, web development dan web education. Anda dapat mengunjungi situs resminya di&nbsp;<a href="http://www.javawebmedia.com/">www.javawebmedia.com</a>.</p>\r\n<p>Aktivitas berikutnya adalah sebagai mahasiswa Magister Teknologi Informasi di Universitas Indonesia. Setelah pulang bekerja kemudian berangkat kuliah di Kampus Salemba, Fakultas Ilmu Komputer Universitas Indonesia.</p>	Publish	Profil	ProfilJava Web Media	kisspng-online-shopping-e-commerce-retail-business-store-5abbd566ab34846523928715222593027013-1591960600.jpg		71	0			2020-01-20 13:26:31	2020-01-20 13:24:38	2020-06-12 13:16:40
11	4	5		tersedia-kursus-private	Tersedia Kursus Private	<p>Anda ingin kursus sekaligus menyelesaikan permasalahan yang Anda hadapi (<em>real project</em>)?&nbsp;</p>\r\n<p>Maka sebaiknya ambil paket kursus private yang kami sediakan. Materi kursus akan disesuaikan dengan kasus nyata di lapangan yang sedang Anda hadapi.</p>	Publish	Keunggulan	Anda bisa kursus sekaligus menyelesaikan permasalahan yang Anda hadapi (real project)	Kursus_Banner-04.jpg	fa fa-user	28	1			2020-01-21 07:09:08	2020-01-21 07:08:21	2020-02-18 08:09:49
12	4	5		jadwal-flexible	Jadwal Flexible	<p>Bagi Anda yang ingin belajar, kami menerapkan jadwal flexible. Jadwal bisa didiskusikan bersama dengan tutor secara langsung.</p>\r\n<p>Kami juga menyediakan kursus kelas weekday, weekend dan kelas malam. Karyawan bisa mengambil kelas malam atau weekend (sabtu dan minggu). Bagi Anda yang memiliki waktu luang, Anda dapat mengambil kelas weekday.</p>	Publish	Keunggulan	Bagi Anda yang ingin belajar, kami menerapkan jadwal flexible. Jadwal bisa didiskusikan bersama dengan pengajar	Kursus_Banner-031.jpg	fa fa-clock	28	6			2020-01-21 07:12:14	2020-01-21 07:09:39	2020-02-18 08:10:22
13	4	5		semi-private	Semi Private	<p>Untuk paket kelas adalah 2-5 siswa perkelas. Jika dalam 2 minggu kelas tidak terpenuhi, maka 1 orang tetap jalan.</p>\r\n<p>Java Web Media menetapkan&nbsp;<em>deadline</em> maksimal 2 minggu jika kelas tidak memenuhi kuota minimal. Misalnya kursus seharusnya minimal 2 siswa, tapi jika dalam jangka waktu dua minggu kuota belum terpenuhi, maka kelas akan tetap dilaksanakan meskipun hanya dengan 1 siswa.</p>	Publish	Keunggulan	Untuk paket kelas adalah 2-5 siswa perkelas. Jika dalam 2 minggu kelas tidak terpenuhi, maka 1 orang tetap jalan.	wallpaper-v3-ori-01-1592024110.jpg	fa fa-users	0	5			2020-02-18 14:00:35	2020-02-18 13:58:00	2020-06-13 06:55:12
14	4	5		course-with-your-own-project	Course with your own project	<p>Kursus dengan materi sesuai proyek Anda sendiri. Materi Anda yang tentukan.</p>\r\n<p>Anda bisa kursus dengan materi sesuai kebutuhan pekerjaan Anda. Banyak siswa di Java Web Media memilih kelas ini karena mereka bisa fokus kursus pada pekerjaan yang sedang mereka hadapi.</p>	Publish	Keunggulan	Kursus dengan materi sesuai proyek Anda sendiri. Materi Anda yang tentukan.	wallpaper-v2-ori-01-1592024099.jpg	fa fa-home	0	4			2020-02-18 14:06:26	2020-02-18 14:04:18	2020-06-13 06:55:01
15	4	5		gratis-konsultasi	Gratis Konsultasi	<p>Setelah selesai kursus akan disupport seumur hidup. Anda bisa konsultasi kapan saja.</p>\r\n<p>&nbsp;</p>	Publish	Keunggulan	Setelah selesai kursus akan disupport seumur hidup. Anda bisa konsultasi kapan saja.	wallpaper-v1-ori-01-1592024089.jpg	fab fa-whatsapp	0	3			2020-02-18 14:09:08	2020-02-18 14:07:31	2020-06-13 06:54:50
\.


--
-- Data for Name: _download; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.download (id_download, id_kategori_download, id_user, judul_download, jenis_download, isi, gambar, website, hits, tanggal) FROM stdin;
2	1	4	Panduan Untuk Admin Engineering Utama	Download	<p>Panduan Untuk Admin Engineering</p>	banner-top-asli-1591956558.pdf	https://javawebmedia.com	2	2020-06-12 12:21:41
3	1	4	Buku Panduan PT SBI (ADMIN ENGINEERING	Download	<p>Buku Panduan PT SBI (ADMIN ENGINEERING</p>	instagram-feed-2020-1592019516.pptx		2	2020-06-13 05:47:45
\.


--
-- Data for Name: _galeri; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.galeri (id_galeri, id_kategori_galeri, id_user, judul_galeri, jenis_galeri, isi, gambar, website, hits, popup_status, urutan, status_text, tanggal) FROM stdin;
9	4	4	Java Web Media <span>Kursus</span>	Homepage	<p>Pusat Kursus Programming, Desain dan Statistik dengan format Kelas dan Private</p>	produk-javawebmedia-01-1592630207.jpg	https://javawebmedia.com		Publish	0	Ya	2020-06-20 07:16:48
11	4	4	Selamat Datang di Educamedia	Homepage	<p>Yuk download dan kursus langsung di Educamedia</p>	3169210-1592003020.jpg	https://javawebmedia.com		Publish	1	Ya	2020-06-20 07:15:35
\.


--
-- Data for Name: _gambar_produk; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.gambar_produk (id_gambar_produk, id_user, id_produk, nama_gambar_produk, gambar, keterangan, urutan, tanggal) FROM stdin;
2	0	1		NITRICO_Distributor_Ad_01_b2.jpg		0	2020-05-30 01:45:38
\.


--
-- Data for Name: _kategori; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.kategori (id_kategori, id_user, slug_kategori, nama_kategori, urutan, hits, tanggal) FROM stdin;
4	1	penelitian-internal	Penelitian Internal	4	0	2020-06-11 00:08:23
5	1	kegiatan-organisasi	Kegiatan Organisasi	5	0	2020-06-11 00:08:31
6	0	penelitian-internasional	Penelitian Internasional	3	0	2020-06-10 23:31:46
\.


--
-- Data for Name: _kategori_download; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.kategori_download (id_kategori_download, slug_kategori_download, nama_kategori_download, urutan) FROM stdin;
1	product-pricelist	Product Pricelist	1
2	informasi-nitrico	Informasi Nitrico	2
\.


--
-- Data for Name: _kategori_galeri; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.kategori_galeri (id_kategori_galeri, slug_kategori_galeri, nama_kategori_galeri, urutan) FROM stdin;
4	kegiatan	Kegiatan	2
6	kegiatan-kampus	Kegiatan Kampus	1
\.


--
-- Data for Name: _kategori_produk; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.kategori_produk (id_kategori_produk, nama_kategori_produk, slug_kategori_produk, urutan, keterangan, gambar, tanggal) FROM stdin;
1	Kursus Programming	kursus-programming	1	<p>Kursus Programming</p>	produk-javawebmedia-02-1592630261.jpg	2020-06-20 07:17:41
3	Kursus Desain	kursus-desain	2	<p>Kursus Desain dan UI/UX</p>	produk-javawebmedia-05-1592630467.jpg	2020-06-20 07:21:07
4	Kursus Statistik dan Manajemen Data	kursus-statistik-dan-manajemen-data	3	<p>Kursus Statistik dan Manajemen Data</p>	produk-javawebmedia-11-1592630490.jpg	2020-06-20 07:21:30
\.


--
-- Data for Name: _konfigurasi; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.konfigurasi (id_konfigurasi, namaweb, nama_singkat, tagline, tagline2, tentang, deskripsi, website, email, email_cadangan, alamat, telepon, hp, fax, logo, icon, keywords, metatext, facebook, twitter, instagram, google_plus, nama_facebook, nama_twitter, nama_instagram, nama_google_plus, singkatan, google_map, judul_1, pesan_1, judul_2, pesan_2, judul_3, pesan_3, judul_4, pesan_4, judul_5, pesan_5, judul_6, pesan_6, isi_1, isi_2, isi_3, isi_4, isi_5, isi_6, link_1, link_2, link_3, link_4, link_5, link_6, javawebmedia, gambar, video, rekening, prolog_topik, prolog_program, prolog_sekretariat, prolog_aksi, prolog_kolaborasi, prolog_sebaran, gambar_berita, prolog_agenda, prolog_wawasan, protocol, smtp_host, smtp_port, smtp_timeout, smtp_user, smtp_pass, judul_pembayaran, isi_pembayaran, gambar_pembayaran, link_bawah_peta, text_bawah_peta, cara_pesan, id_user, tanggal) FROM stdin;
1	Educamedia	Edukasi Berbasis Tek	Edukasi Berbasis Teknologi Informasi dan Multimedia	Edukasi Berbasis Teknologi Informasi dan Multimedia	<p>Educamedia berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Educamedia awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Educamedia resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Educamedia adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Educamedia sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Educamedia membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Educamedia telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Educamedia juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>\r\n<p>&nbsp;</p>	Educamedia berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Educamedia awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.	https://javawebmedia.co.id	contact@javawebmedia.co.id	contact@javawebmedia.co.id	Java Web Media\r\nMall Depok Town Square\r\nLt 2 Blok SS1 No. 5-7\r\nJl. Margonda Raya - Kota Depok	85715100485	+6281210697841	81210697841	logo-educamedia-putih-1592059001.png	icon-educamedia-1592059011.png	educamedia, java web media, laravel, online course, kursus online		https://www.facebook.com/javawebmedia	http://twitter.com/javawebmedia	https://instagram.com/javawebmedia	https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q	Educamedia	Educamedia	Educamedia		EM	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7930.3386078467065!2d106.82893243028725!3d-6.372131203377098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ed5d166b756d%3A0x41d8cdc14c819774!2sDepok%20Town%20Square!5e0!3m2!1sen!2sid!4v1579565022446!5m2!1sen!2sid" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>	Tempat belajar nyaman	fa fa-home	Materi Kursus Selalu Update	fa fa-laptop	Jadwal Flexibel	fa fa-thumbs-up	Menjaga Amanah	fa-check-square-o	Tempat belajar nyaman	fa-home	Online service	fa-laptop	Kami menyediakan tempat belajar yang nyaman dan menyenangkan serasa di rumah sendiri	Materi kursus kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari	Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel	Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.	Kami menyediakan tempat belajar yang nyaman dan menyenangkan	Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari							<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>	wallpaper-v3-ori-01-1592023305.jpg	fsH_KhUWfho	<table id="dataTables-example" class="table table-bordered" width="100%">\r\n<thead>\r\n<tr>\r\n<th tabindex="0" colspan="1" rowspan="1" width="19%">Nama Bank</th>\r\n<th tabindex="0" colspan="1" rowspan="1" width="21%">Nomor Rekening</th>\r\n<th tabindex="0" colspan="1" rowspan="1" width="7%">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>	<p>Dalam mewujudkan pembangunan berkelanjutan, pemerintah kabupaten anggota LTKL telah mengidentifikasi dan memilih topik yang sesuai dengan kondisi di daerahnya. Ada 5 topik prioritas yang dipilih dengan penerapan yang disesuaikan kembali di masing-masing kabupaten.</p>		<p>Setelah Lingkar Temu Kabupaten Lestari (LTKL) diinisiasi, kesekretariatan dibentuk untuk membantu para pemerintah kabupaten anggota bekerja dan berkolaborasi. Walaupun tidak memiliki mandat implementasi, Sekretariat LTKL menjadi vital dalam melancarkan koordinasi, pengumpulan basis data, hingga pelaporan perkembangan. Sekretariat LTKL juga diperkuat dengan kehadiran personil yang telah berpengalaman di bidang management pengetahuan, program pembangunan berkelanjutan hingga kebijakan.</p>		<p>Lingkar Temu Kabupaten Lestari (LTKL) mengedepankan kolaborasi dalam mewududkan pembangunan berkelanjutan. Ada 10 kabupaten yang tersebar di 6 provinsi di Indonesia telah menjadi anggota LTKL.</p>\r\n<p>Hingga kini, berbagai pihak telah ikut berkolaborasi, mulai dari pemerintah kabupaten, sekeretariat LTKL, mitra pembangunan hingga pihak swasta.</p>		balairung-budiutomo-01.jpg	<p>Acara yang ditampilkan merupakan kumpulan acara LTKL, mitra, maupun pemerintah kabupaten anggota LTKL, mulai dari acara seminar hingga festival.</p>	<p>LTKL bukan satu-satunya yang bergerak dalam mewujudkan pembangunan berkelanjutan, serta upaya penanggulangan perubahan iklim. Ikuti terus perkembangan usaha LTKL serta rekan-rekan lain menuju bumi dan Indonesia yang lestari.</p>	smtp	ssl://mail.javawebmedia.com	465	12	pendaftaran@javawebmedia.com	rasulullah112233	Metode Pembayaran Produk	<p>Anda dapat melakukan pembayaran dengan beberapa cara, yaitu:</p>\r\n<ol>\r\n<li><strong>Pembayaran Tunai</strong>, dapat Anda serahkan secara langsung ke salah satu staff Java Web Media</li>\r\n<li><strong>Pembayar Via Transfer Rekening</strong></li>\r\n</ol>\r\n<p>Lakukan transfer biaya atas layanan dan produk&nbsp;<strong>Java Web Media</strong>&nbsp;ke salah satu rekening di bawah ini.</p>\r\n<h3>Konfirmasi Pembayaran</h3>\r\n<p>Anda dapat melakukan konfirmasi pembayaran melalui:</p>\r\n<ul>\r\n<li><strong>Melalui Email</strong>, silakan kirim bukti pembayaran ke:&nbsp;<strong><a href="mailto:contact@javawebmedia.co.id?subject=Konfirmasi%20Pembayaran">contact@javawebmedia.co.id</a></strong></li>\r\n<li><strong>Melalui Whatsapp</strong>, kirimkan bukti pembayaran Anda ke&nbsp;<strong>+6281210697841</strong></li>\r\n<li><strong>Melalui Formulir Konfirmasi Pembayaran</strong>, Anda dapat mengunggah bukti pembayaran Anda melalui form&nbsp;<strong><a title="Konfirmasi Pembayaran" href="https://javawebmedia.com/konfirmasi">&nbsp;Konfirmasi Pembayaran</a></strong></li>\r\n</ul>	payment.jpg			Formulir Pemesanan	4	2020-06-20 07:14:21
\.


--
-- Data for Name: _pemesanan; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.pemesanan (id_pemesanan, id_user, id_produk, id_rekening, kode_transaksi, token_transaksi, tanggal_order, nomor_transaksi, status_pemesanan, nama_pemesan, telepon_pemesan, email_pemesan, alamat, jumlah_produk, harga_produk, total_harga, ongkir, total_biaya, tanggal_pemesanan, cara_bayar, tanggal_bayar, bukti, jumlah, pengirim, nama_bank_pengirim, nomor_rekening_pengirim, keterangan, tanggal_post, tanggal_update) FROM stdin;
1	4	2	0	JWM202006100001	kMpUQADBlGkeTQhR7439a6zsqX6dWmzK	2020-06-10	1	Dikirim	Andoyo	85715100485	javawebmedia@gmail.com	adadada	1	12000	12000	0	0	2020-06-10 07:57:46				0					2020-06-10 07:57:46	2020-06-12 15:53:42
2	4	1	0	JWM202006120002	wvFD60jruVx9vYJ1aFL4WLOZAeYQXkxx	2020-06-12	2	Menunggu	Eflita Meiyetriani	85715100485	javawebmedia@gmail.com	ADADA ADADA ADADA AAFA	1	10000	10000	0	0	2020-06-12 12:12:56				0					2020-06-12 12:12:56	2020-06-12 16:13:02
3	0	1	0	JWM202006120003	alN7qAzNj1lopbjwsWswvKecvWjxQUzv	2020-06-12	3	Menunggu	Rayyan Andoyo	85715100485	lalu-kekah@bkkbn.go.id	Perumahan Ferrari	1	10000	10000	0	0	2020-06-12 17:57:42				0					2020-06-12 17:57:42	2020-06-12 19:57:42
4	4	1	0	JWM202006120004	P3uAxeJ3TSvlfYzGRjwgMncwLBQdq3vb	2020-06-12	4	Konfirmasi	Rayyan Andoyo	85715100485	lalu-kekah@bkkbn.go.id	Perumahan Ferrari	1	10000	10000	0	0	2020-06-12 17:58:15				0					2020-06-12 17:58:15	2020-06-12 20:56:39
5	4	1	2	JWM202006120005	rrzHk1NcrkK3KvYnqse4XdudWGz3tiZL	1970-01-01	5	Selesai	UDIN SIMALAKAMA	85715100485	javawebmedia@gmail.com	Desa Sumberejo	1	10000	10000	200000	210000	2020-06-12 18:19:57	Transfer	2020-06-13	357-1591985014.jpg	200000	Andoyo	BCA	2424242		2020-06-12 18:03:35	2020-06-12 20:54:33
6	0	5		JWM202006180006	MxnOVRcARIiPe3vBI4O9YoVxJY0z3B2M	2020-06-18	6	Menunggu	Andoyo	85715100485	javawebmedia@gmail.com	adadada adada	1	120000	120000			2020-06-18 07:57:03									2020-06-18 07:57:03	2020-06-18 09:57:03
\.


--
-- Data for Name: _produk; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.produk (id_produk, id_user, id_client, id_kategori_produk, slug_produk, kode_produk, nama_produk, status_produk, satuan, urutan, deskripsi, isi, harga_jual, harga_beli, harga_terendah, harga_tertinggi, gambar, keywords, mulai_diskon, selesai_diskon, besar_diskon, jenis_diskon, jumlah_order_min, jumlah_order_max, stok, berat, ukuran, hits, tanggal_post, tanggal) FROM stdin;
1	4		1	kursus-php-laravel	NIT203	Kursus PHP Laravel	Publish	Pcs	1	Kursus PHP Laravel	<h2>Deskripsi ringkas</h2>\r\n<p>Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Larevel dan database MySQL.</p>\r\n<hr />\r\n<p>Anda akan belajar membangun website&nbsp;<strong>profil perusahaan</strong>&nbsp;dengan menggunakan bootstrap, framework JavaScript,&nbsp;<strong><em>PHP framework</em></strong><em>&nbsp;<strong>Codeigniter / Laravel</strong></em>&nbsp;dan database MySQL.</p>\r\n<h2><a name="_Toc32320297"></a>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n<h2><a name="_Toc32320298"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n<li>Aplikasi pendaftaran online sederhana</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n<h2><a name="_Toc32320299"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Laporan PDF dengan MPDF</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name="_Toc32320300"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>	10000	8000	12000	18000	produk-javawebmedia-09-1592632044.jpg	Kursus PHP Laravel			10	Persentase	1	100	100	100	10 x 20 x 30 cm	84	2020-05-21 10:24:55	2020-06-20 07:47:24
5	4		1	advanced-web-programming	ADVANCED	Advanced Web Programming	Publish			Advanced Web Programming	<h2>Deskripsi ringkas</h2>\r\n<p>Anda akan belajar membangun aplikasi berbasis website (web based application) dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter/Laravel dan database MySQL.</p>\r\n<hr />\r\n<p>Anda akan belajar membangun&nbsp;<strong>aplikasi berbasis website (<em>web based application</em>)</strong>&nbsp;dengan menggunakan bootstrap, framework JavaScript,&nbsp;<strong><em>PHP framework</em></strong><em>&nbsp;<strong>Codeigniter/Laravel&nbsp;</strong></em>dan database MySQL.</p>\r\n<h2><a name="_Toc32320307"></a>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Membangun aplikasi berbasis website</li>\r\n<li>Membuat laporan dengan berbagai format (PDF, Excel, Word dll)</li>\r\n<li>Membangun web service (API)</li>\r\n<li>Membangun aplikasi web dengan berbagai database (MySQL, Oracle, SQL Server, PostgreSQL dll)</li>\r\n<li><strong><em>Data visualization</em></strong>&nbsp;(format grafik dan peta digital)</li>\r\n</ul>\r\n<h2><a name="_Toc32320308"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membangun aplikasi kompleks berbasis web dengan berbagai database</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Senior Web Web Developer.</strong></li>\r\n</ul>\r\n<h2><a name="_Toc32320309"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Merencanakan, membuat &amp; mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework PHP</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Membuat berbagai jenis laporan (PDF, Excel, Word, Web Service/API, dll)</li>\r\n<li>Membuat data visualization (Grafik dan Peta Digital)</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Version control dengan Git</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name="_Toc32320310"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>	120000	100000			produk-javawebmedia-08-1592634144.jpg	Advanced Web Programming				Potongan							2020-06-13 04:50:52	2020-06-20 08:22:24
6	4		4	kursus-statistik-dan-olah-data-spss-dan-stata	STATISTIK	Kursus Statistik dan Olah Data (SPSS dan STATA)	Publish	Pcs		Kursus Statistik dan Olah Data (SPSS dan STATA)	<h2>Deskripsi ringkas</h2>\r\n<p>Anda akan belajar manajemen dan analisis data dengan menggunakan SPSS dan Stata. Setelah mengikuti kursus ini Anda diharapkan dapat melakukan pengolahan data dan membuat analisis data serta interpretasinya sesuai dengan tujuan analisis yang digunakan.</p>\r\n<hr />\r\n<h3><strong>Paket Basic - 2 sesi (@ 2,5 jam) atau 1 sesi (300 menit)</strong></h3>\r\n<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>	1800000	1500000			produk-javawebmedia-11-1592634278.jpg	Kursus Statistik dan Olah Data (SPSS dan STATA)				Potongan			100	0			2020-06-20 06:24:39	2020-06-20 08:24:39
\.


--
-- Data for Name: _rekening; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.rekening (id_rekening, nama_bank, nomor_rekening, atas_nama, gambar, urutan, tanggal) FROM stdin;
1	BCA KCP DEPOK	4212-5482-04	ANDOYO	bca.jpg	1	2020-06-11 23:36:46
2	BNI SYARIAH DEPOK	0611-9927-06	CV JAVA WEB MEDIA	Logo_BNI_Syariah.png	2	2019-11-13 00:54:18
4	BANK MANDIRI KCU DEPOK	157-00-0180776-8	EFLITA MEIYETRIANI	mandiri.png	4	2019-11-13 00:58:42
5	BANK BNI KCU DEPOK	0105-3010-01	EFLITA MEIYETRIANI	bni.png	5	2019-11-13 01:00:13
\.


--
-- Data for Name: _users; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.users (id_user, nama, email, username, password, akses_level, kode_rahasia, gambar, tanggal) FROM stdin;
4	Andoyo Cakep	javawebmedia@gmail.com	javawebmedia	dc28d4424ece38803650f440d7eb1cb2b3fb6651	Admin		testimonials-1.jpg	2020-06-20 08:51:42
14	Eflita Meiyetriani	eflita@gmail.com	eflita	4228f9df60d56e866971c15271382b9f10251ce0	Admin			2020-06-12 01:17:42
\.


--
-- Data for Name: _video; Type: TABLE DATA; Schema: public; Owner: lnxherptaqgxqb
--

COPY public.video (id_video, judul, posisi, keterangan, video, urutan, bahasa, id_user, tanggal) FROM stdin;
1	BAGIAN 1 DASAR-DASAR CSS KURSUS JAVA WEB MEDIA 	Homepage	BAGIAN 1 DASAR-DASAR CSS KURSUS JAVA WEB MEDIA 	kOEbjxl42hQ	1	Indonesia	4	2020-01-22 00:47:59
2	BAGIAN 2 PERENCANAAN DATABASE, PHPMYADMIN, EXPORT DAN IMPORT 	Homepage	BAGIAN 2 PERENCANAAN DATABASE, PHPMYADMIN, EXPORT DAN IMPORT 	3Tn79YuiWX8	2	Indonesia	4	2020-01-22 00:48:16
3	BAGIAN 3 - CODEIGNITER DAN CRUD DASAR 	Homepage	BAGIAN 3 - CODEIGNITER DAN CRUD DASAR 	-X0Jwf3V8SY	3	Indonesia	4	2020-01-22 00:50:25
4	BAGIAN 4 - MODUL USER/ADMINISTRATOR	Homepage	BAGIAN 4 - MODUL USER/ADMINISTRATOR	K9RoEV1U3YQ	4	Indonesia	4	2020-01-22 00:50:21
5	BAGIAN 5 - AUTHENTICATION LOGIN, LOGOUT DAN PROTEKSI HALAMAN	Homepage	BAGIAN 5 - AUTHENTICATION LOGIN, LOGOUT DAN PROTEKSI HALAMAN	pweuSiKKCcs	5	Indonesia	4	2020-01-22 00:50:17
6	BAGIAN 6 - MODUL BERITA, KATEGORI BERITA DAN TINYMCE 	Homepage	BAGIAN 6 - MODUL BERITA, KATEGORI BERITA DAN TINYMCE 	Lmxkm0C8ZlY	6	Indonesia	4	2020-01-22 00:50:14
7	BAGIAN 7 TEMPLATE DAN LAYOUT FRONT END	Homepage	BAGIAN 7 TEMPLATE DAN LAYOUT FRONT END	Lb8NTMZrFaE	7	Indonesia	4	2020-01-22 00:50:10
8	BAGIAN 8 MENAMPILKAN LISTING DAN DETAIL BERITA (TUTORIAL CODEIGNITER)	Homepage	BAGIAN 8 MENAMPILKAN LISTING DAN DETAIL BERITA (TUTORIAL CODEIGNITER)	uNdvaTZiOHo	8	Indonesia	4	2020-01-22 00:50:06
9	BAGIAN 9 MODUL DOKUMEN DAN UPLOAD FILE 	Homepage	BAGIAN 9 MODUL DOKUMEN DAN UPLOAD FILE 	IKAQLcQEJx0	9	Indonesia	4	2020-01-22 00:50:03
10	BAGIAN 10 MODUL GALERI DAN VIDEO SERTA MODUL KONFIGURASI	Homepage	BAGIAN 10 MODUL GALERI DAN VIDEO SERTA MODUL KONFIGURASI	h2YDawzGTTQ	10	Indonesia	4	2020-01-22 00:49:59
11	BAGIAN 11 HOMEPAGE SLIDER, GALERI, VIDEO DAN KONTAK CODEIGNITER TUTORIAL 	Homepage	BAGIAN 11 HOMEPAGE SLIDER, GALERI, VIDEO DAN KONTAK CODEIGNITER TUTORIAL 	dTA3-GxQyks	11	Indonesia	4	2020-01-22 00:49:55
12	BAGIAN 12 INSPECT ELEMENT, MENGUBAH CSS, PEMESANAN DOMAIN DAN UPLOAD WEB ONLINE	Homepage	BAGIAN 12 INSPECT ELEMENT, MENGUBAH CSS, PEMESANAN DOMAIN DAN UPLOAD WEB ONLINE	58xSNF_kxno	12	Indonesia	4	2020-01-22 00:49:52
13	TUTORIAL JAVA WEB MEDIA - INSTALASI WEB SERVER DAN CODE EDITOR SUBLIME TEXT 3	Homepage	TUTORIAL JAVA WEB MEDIA - INSTALASI WEB SERVER DAN CODE EDITOR SUBLIME TEXT 3	pOZE0bb7iLc	13	Indonesia	4	2020-01-22 00:49:49
14	SESI 1 DASAR DASAR HTML DAN CSS (COMPANY PROFILE WEB)	Homepage	SESI 1 DASAR DASAR HTML DAN CSS (COMPANY PROFILE WEB)	iiXpy9au9rI	14	Indonesia	4	2020-01-22 00:49:45
15	SESI 2 CSS, SELECTOR CSS DAN PENERAPANNYA DI HTML5 (WEB DEVELOPMENT) 	Homepage	SESI 2 CSS, SELECTOR CSS DAN PENERAPANNYA DI HTML5 (WEB DEVELOPMENT) 	IvjxrQ8c4-w	15	Indonesia	4	2020-01-22 00:49:40
16	SESI 3 MEMBUAT TEMPLATE SEDERHANA DENGAN HTML5 DAN CSS3 	Homepage	SESI 3 MEMBUAT TEMPLATE SEDERHANA DENGAN HTML5 DAN CSS3 	s3hP3OJ9xE4	16	Indonesia	4	2020-01-22 00:49:34
17	SESI 6 MEMBUAT TEMPLATE DENGAN BOOTSTRAP 4 DAN JQUERY (COMPANY PROFILE WEB)	Homepage	SESI 6 MEMBUAT TEMPLATE DENGAN BOOTSTRAP 4 DAN JQUERY (COMPANY PROFILE WEB)	SpP_OdIlGHs	17	Indonesia	4	2020-01-22 00:49:30
18	SESI 7 MEMBUAT TEMPLATE DENGAN BOOTSTRAP 4, JQUERY DAN FONT AWESOME (WEBSITE PROFIL PERUSAHAN)	Homepage	SESI 7 MEMBUAT TEMPLATE DENGAN BOOTSTRAP 4, JQUERY DAN FONT AWESOME (WEBSITE PROFIL PERUSAHAN)	YeoB2qlBwJo	18	Indonesia	4	2020-01-22 00:49:26
19	SESI 8 PERENCANAAN DATABASE WEBSITE COMPANY PROFILE MYSQL	Homepage	SESI 8 PERENCANAAN DATABASE WEBSITE COMPANY PROFILE MYSQL	LLNPd9EZMxA	19	Indonesia	4	2020-01-22 00:49:22
20	SESI 9 INSTALASI DAN KONFIGURASI CODEIGNITER DAN INTEGRASI TEMPLATE	Homepage	SESI 9 INSTALASI DAN KONFIGURASI CODEIGNITER DAN INTEGRASI TEMPLATE	aEZYJG56pAU	20	Indonesia	4	2020-01-22 00:49:18
21	SESI 10 INTEGRASI TEMPLATE BOOTSTRAP 4 DENGAN CODEIGNITER 	Homepage	SESI 10 INTEGRASI TEMPLATE BOOTSTRAP 4 DENGAN CODEIGNITER 	7tzS8cz2llg	21	Indonesia	4	2020-01-22 00:49:13
22	SESI 11 INTEGRASI TEMPLATE ADMIN LTE DENGAN CODEIGNITER	Homepage	SESI 11 INTEGRASI TEMPLATE ADMIN LTE DENGAN CODEIGNITER	eklNEGqM8cw	22	Indonesia	4	2020-01-22 00:49:08
23	SESI 12 CRUD TABEL USER DENGAN CODEIGNITER (WEBSITE PROFIL PERUSAHAAN)	Homepage	SESI 12 CRUD TABEL USER DENGAN CODEIGNITER (WEBSITE PROFIL PERUSAHAAN)	dzlU98D7JaA	23	Indonesia	4	2020-01-22 00:49:03
24	SESI 13 LOGIN, LOGOUT, PROTEKSI HALAMAN, UPDATE PROFILE DAN MEMBUAT LIBRARY SENDIRI DENGAN CODEIGNIT	Homepage	SESI 13 LOGIN, LOGOUT, PROTEKSI HALAMAN, UPDATE PROFILE DAN MEMBUAT LIBRARY SENDIRI DENGAN CODEIGNIT	iE6MdliJtyY	24	Indonesia	4	2020-01-22 00:48:58
25	SESI 14 CRUD KATEGORI BERITA	Homepage	SESI 14 CRUD KATEGORI BERITA	2-HkYTSCTnI	25	Indonesia	4	2020-01-22 00:48:26
26	SESI 15 CRUD TABEL BERITA DAN INSTALASI TINYMCE (WEBSITE PERUSAHAAN) 	Homepage	SESI 15 CRUD TABEL BERITA DAN INSTALASI TINYMCE (WEBSITE PERUSAHAAN) 	fAuGTEvmf1E	26	Indonesia	4	2020-01-22 00:50:45
27	SESI 16 CRUD TABEL LAYANAN DENGAN CODEIGNITER (WEBSITE PERUSAHAAN)	Homepage	SESI 16 CRUD TABEL LAYANAN DENGAN CODEIGNITER (WEBSITE PERUSAHAAN)	AB9G5lg8k1w	27	Indonesia	4	2020-01-22 00:50:51
28	SESI 17 CRUD TABEL GALERI DENGAN CODEIGNITER (WEBSITE PERUSAHAAN) 	Homepage	SESI 17 CRUD TABEL GALERI DENGAN CODEIGNITER (WEBSITE PERUSAHAAN) 	jZgdAR4OOsc	28	Indonesia	4	2020-01-22 00:50:55
29	SESI 18 MEMBUAT KONFIGURASI WEBSITE DENGAN CODEIGNITER (WEBSITE PERUSAHAAN) 	Homepage	SESI 18 MEMBUAT KONFIGURASI WEBSITE DENGAN CODEIGNITER (WEBSITE PERUSAHAAN) 	5NbLSXUVrQM	29	Indonesia	4	2020-01-22 00:50:58
30	SESI 19 MENGELOLA HOMEPAGE, GAMBAR SLIDER, LAYANAN DAN BERITA DENGAN CODEIGNITER 	Homepage	SESI 19 MENGELOLA HOMEPAGE, GAMBAR SLIDER, LAYANAN DAN BERITA DENGAN CODEIGNITER 	sP9KVfvZJBM	30	Indonesia	4	2020-01-22 00:51:02
31	SESI 20 HALAMAN DETAIL BERITA DAN BELAJAR PAGINATION DI HALAMAN BERITA DENGAN CODEIGNITER	Homepage	SESI 20 HALAMAN DETAIL BERITA DAN BELAJAR PAGINATION DI HALAMAN BERITA DENGAN CODEIGNITER	NN_A7N6l9zM	31	Indonesia	4	2020-01-22 00:51:07
32	SESI 21 HALAMAN LAYANAN DAN DETAILNYA DENGAN CODEIGNITER 	Homepage	SESI 21 HALAMAN LAYANAN DAN DETAILNYA DENGAN CODEIGNITER 	JdMErkxzdB0	32	Indonesia	4	2020-01-22 00:51:10
33	SESI 22 HALAMAN KONTAK DAN DASBOR ADMINISTRATOR DENGAN CODEIGNITER	Homepage	SESI 22 HALAMAN KONTAK DAN DASBOR ADMINISTRATOR DENGAN CODEIGNITER	it97Ls9n-BA	33	Indonesia	4	2020-01-22 00:51:14
34	SESI 23 MEMBELI DOMAIN DAN HOSTING, LALU UPLOAD WEBSITE KE SERVER DAN KONFIGURASINYA 	Homepage	SESI 23 MEMBELI DOMAIN DAN HOSTING, LALU UPLOAD WEBSITE KE SERVER DAN KONFIGURASINYA 	fTbkiEmCEXk	34	Indonesia	4	2020-01-22 00:51:18
35	BAGIAN 1 DASAR DASAR CSS	Homepage	BAGIAN 1 DASAR DASAR CSS	kOEbjxl42hQ	35	Indonesia	4	2020-01-22 00:51:21
36	BAGIAN 2 PERENCANAAN DATABASE, PHPMYADMIN, EXPORT DAN IMPORT	Homepage	BAGIAN 2 PERENCANAAN DATABASE, PHPMYADMIN, EXPORT DAN IMPORT	3Tn79YuiWX8	36	Indonesia	4	2020-01-22 00:51:26
37	BAGIAN 3 - CODEIGNITER DAN CRUD DASAR 	Homepage	BAGIAN 3 - CODEIGNITER DAN CRUD DASAR 	-X0Jwf3V8SY	37	Indonesia	4	2020-01-22 00:51:29
38	BAGIAN 4 - MODUL USER/ADMINISTRATOR 	Homepage	BAGIAN 4 - MODUL USER/ADMINISTRATOR 	K9RoEV1U3YQ	38	Indonesia	4	2020-01-22 00:51:33
39	BAGIAN 5 - AUTHENTICATION LOGIN, LOGOUT DAN PROTEKSI HALAMAN 	Homepage	BAGIAN 5 - AUTHENTICATION LOGIN, LOGOUT DAN PROTEKSI HALAMAN 	pweuSiKKCcs	39	Indonesia	4	2020-01-22 00:51:37
40	BAGIAN 6 - MODUL BERITA, KATEGORI BERITA DAN TINYMCE 	Homepage	BAGIAN 6 - MODUL BERITA, KATEGORI BERITA DAN TINYMCE 	Lmxkm0C8ZlY	40	Indonesia	4	2020-01-22 00:51:41
41	BAGIAN 7 TEMPLATE DAN LAYOUT FRONT END 	Homepage	BAGIAN 7 TEMPLATE DAN LAYOUT FRONT END 	Lb8NTMZrFaE	41	Indonesia	4	2020-01-22 00:51:44
42	  BAGIAN 8 MENAMPILKAN LISTING DAN DETAIL BERITA (TUTORIAL CODEIGNITER)	Homepage	\r\n\r\nBAGIAN 8 MENAMPILKAN LISTING DAN DETAIL BERITA (TUTORIAL CODEIGNITER)	uNdvaTZiOHo	42	Indonesia	4	2020-01-22 00:51:48
43	BAGIAN 9 MODUL DOKUMEN 	Homepage	BAGIAN 9 MODUL DOKUMEN 	IKAQLcQEJx0	43	Indonesia	4	2020-01-22 00:51:51
44	BAGIAN 10 MODUL GALERI DAN VIDEO SERTA MODUL KONFIGURASI	Homepage	BAGIAN 10 MODUL GALERI DAN VIDEO SERTA MODUL KONFIGURASI	h2YDawzGTTQ	44	Indonesia	4	2020-01-22 00:51:55
45	BAGIAN 11 HOMEPAGE SLIDER, GALERI, VIDEO DAN KONTAK CODEIGNITER TUTORIAL	Homepage	BAGIAN 11 HOMEPAGE SLIDER, GALERI, VIDEO DAN KONTAK CODEIGNITER TUTORIAL	dTA3-GxQyks	45	Indonesia	4	2020-01-22 00:51:58
46	TUTORIAL JAVA WEB MEDIA - INSTALASI WEB SERVER DAN CODE EDITOR SUBLIME TEXT 3	Homepage	TUTORIAL JAVA WEB MEDIA - INSTALASI WEB SERVER DAN CODE EDITOR SUBLIME TEXT 3	pOZE0bb7iLc	46	Indonesia	4	2020-01-22 00:52:02
47	KURSUS CODEIGNITER JAVA WEB MEDIA 1 - PERENCANAAN DATABASE SISTEM INFORMASI PERPUSTAKAAN 	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 1 - PERENCANAAN DATABASE SISTEM INFORMASI PERPUSTAKAAN 	Zhb_7mo8iAU	47	Indonesia	4	2020-01-22 00:52:05
48	KURSUS CODEIGNITER JAVA WEB MEDIA 2 - INSTALLASI CODEIGNITER DAN KONFIGURASINYA (SI PERPUSTAKAAN) 	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 2 - INSTALLASI CODEIGNITER DAN KONFIGURASINYA (SI PERPUSTAKAAN) 	fpRh51vnuII	48	Indonesia	4	2020-01-22 00:52:08
49	KURSUS CODEIGNITER JAVA WEB MEDIA 3 - TEMPLATING DAN LAYOUTING BACK END (SI PERPUSTAKAAN)	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 3 - TEMPLATING DAN LAYOUTING BACK END (SI PERPUSTAKAAN)	r564woEZ3VA	49	Indonesia	4	2020-01-22 00:52:12
50	KURSUS CODEIGNITER 4 - CRUD MODUL USER (SI PERPUSTAKAAN)	Homepage	KURSUS CODEIGNITER 4 - CRUD MODUL USER (SI PERPUSTAKAAN)	2yWPXLA7DZA	50	Indonesia	4	2020-01-22 00:52:17
51	KURSUS CODEIGNITER JAVA WEB MEDIA 5 - LOGIN, LOGOUT DAN PROTEKSI HALAMAN (SI PERPUSTAKAAN)	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 5 - LOGIN, LOGOUT DAN PROTEKSI HALAMAN (SI PERPUSTAKAAN)	fAYnWt4EuYU	51	Indonesia	4	2020-01-22 00:52:31
52	KURSUS CODEIGNITER JAVA WEB MEDIA 6 - CRUD MODUL ANGGOTA (SI PERPUSTAKAAN) 	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 6 - CRUD MODUL ANGGOTA (SI PERPUSTAKAAN) 	er8PYRvtJmE	52	Indonesia	4	2020-01-22 00:52:35
53	KURSUS CODEIGNITER JAVA WEB MEDIA 7 - CRUD TABEL TABEL REFERENSI, PERBAIKAN DELETE USER DAN ANGGOTA 	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 7 - CRUD TABEL TABEL REFERENSI, PERBAIKAN DELETE USER DAN ANGGOTA 	y-p_A9nMcfI	53	Indonesia	4	2020-01-22 00:52:39
54	KURSUS CODEIGNITER JAVA WEB MEDIA 8 - MEMBUAT HALAMAN BERANDA HOMEPAGE (SI PERPUSTAKAAN) 	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 8 - MEMBUAT HALAMAN BERANDA HOMEPAGE (SI PERPUSTAKAAN) 	avJElC1KbAQ	54	Indonesia	4	2020-01-22 00:52:42
55	KURSUS CODEIGNITER JAVA WEB MEDIA 9 - MODUL BUKU TAMBAH DAN LISTING (SI PERPUSTAKAAN) 	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 9 - MODUL BUKU TAMBAH DAN LISTING (SI PERPUSTAKAAN) 	KMt3po80qls	55	Indonesia	4	2020-01-22 00:52:46
56	KURSUS CODEIGNITER JAVA WEB MEDIA 10 - MODUL BUKU EDIT DAN DETAIL BUKU (SI PERPUSTAKAAN)	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 10 - MODUL BUKU EDIT DAN DETAIL BUKU (SI PERPUSTAKAAN)	qpoIlWpmFHk	56	Indonesia	4	2020-01-22 00:52:49
57	KURSUS CODEIGNITER JAVA WEB MEDIA 11 - MODUL FILE BUKU ATAU EBOOK (SI PERPUTAKAAN) 	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 11 - MODUL FILE BUKU ATAU EBOOK (SI PERPUTAKAAN) 	GVfChqD1Ev0	57	Indonesia	4	2020-01-22 00:52:53
58	KURSUS CODEIGNITER JAVA WEB MEDIA 12 - CRUD MODUL BERITA ( (SI PERPUTAKAAN)	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 12 - CRUD MODUL BERITA ( (SI PERPUTAKAAN)	Uh5tC_LnvvI	58	Indonesia	4	2020-01-22 00:52:57
59	KURSUS CODEIGNITER JAVA WEB MEDIA 13 - MENGELOLA HALAMAN BERANDA (SI PERPUSTAKAAN)	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 13 - MENGELOLA HALAMAN BERANDA (SI PERPUSTAKAAN)	UmsNC7RMWeg	59	Indonesia	4	2020-01-22 00:53:01
60	KURSUS CODEIGNITER JAVA WEB MEDIA 14 - MENGELOLA HALAMAN BERANDA DAN KATALOG BUKU (SI PERPUSTAKAAN)	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 14 - MENGELOLA HALAMAN BERANDA DAN KATALOG BUKU (SI PERPUSTAKAAN)	MB3YD8IorjE	60	Indonesia	4	2020-01-22 00:53:04
61	KURSUS CODEIGNITER JAVA WEB MEDIA 15 - MEMBACA BUKU PDF, HALAMAN BUKU BARU, USULAN DAN KONTAK	Homepage	KURSUS CODEIGNITER JAVA WEB MEDIA 15 - MEMBACA BUKU PDF, HALAMAN BUKU BARU, USULAN DAN KONTAK	4FfkwHRuQ8M	61	Indonesia	4	2020-01-22 00:53:08
62	TUTORIAL CODEIGNITER JAVA WEB MEDIA 16 - MEMBUAT KONFIGURASI WEBSITE YANG MUDAH DI UPDATE	Homepage	TUTORIAL CODEIGNITER JAVA WEB MEDIA 16 - MEMBUAT KONFIGURASI WEBSITE YANG MUDAH DI UPDATE	FBGdNKLeArM	62	Indonesia	4	2020-01-22 00:53:12
63	SESI 17 PEMINJAMAN BUKU SI PERPUSTAKAAN DENGAN CODEGNITER	Homepage	SESI 17 PEMINJAMAN BUKU SI PERPUSTAKAAN DENGAN CODEGNITER	1BRG8HzghuE	63	Indonesia	4	2020-01-22 00:53:15
64	SESI 18 CRUD LINK DAN MENAMPILKAN DI HOMEPAGE (SI PERPUSTAKAAN) 	Homepage	SESI 18 CRUD LINK DAN MENAMPILKAN DI HOMEPAGE (SI PERPUSTAKAAN) 	aTRXIePwiOU	64	Indonesia	4	2020-01-22 00:53:19
\.


--
-- PostgreSQL database dump complete
--

