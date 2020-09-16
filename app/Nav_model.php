<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Nav_model extends Model
{

    // Main page
    public function nav_produk()
    {
		/*
    	$query = DB::table('produk')
            ->join('kategori_produk', 'kategori_produk.id_kategori_produk', '=', 'produk.id_kategori_produk')
            ->select('produk.*', 'kategori_produk.slug_kategori_produk', 'kategori_produk.nama_kategori_produk')
            ->groupBy('kategori_produk.id_kategori_produk')
            ->orderBy('produk.id_produk','DESC');
			
		*/
			
		//$sql = str_replace_array('?', $query->getBindings(), $query->toSql());
          
        //dd($sql);
		
		
		
        //    ->get();
        return DB::select(DB::raw('
		select * from (select produk.*, kategori_produk.slug_kategori_produk, kategori_produk.nama_kategori_produk 
		from produk join kategori_produk on kategori_produk.id_kategori_produk = produk.id_kategori_produk 
		order by produk.id_produk desc) as b group by b.id_kategori_produk
		'));
    }

     // kode_transaksi
    public function status_pemesanan($status_pemesanan)
    {
        $query = DB::table('pemesanan')
            ->join('produk', 'produk.id_produk', '=', 'pemesanan.id_produk','LEFT')
            ->select('pemesanan.*', 'produk.nama_produk', 'produk.harga_jual')
            ->where('pemesanan.status_pemesanan',$status_pemesanan)
            ->orderBy('pemesanan.id_pemesanan','DESC')
            ->get();
        return $query;
    }

    // Main page
    public function nav_profil()
    {
		

		return DB::select(DB::raw("select * from(
		select berita.*, kategori.slug_kategori, kategori.nama_kategori from berita inner join kategori on kategori.id_kategori = berita.id_kategori where (berita.status_berita = 'Publish' and berita.jenis_berita = 'Profil') order by berita.id_berita desc
		) as b group by b.id_kategori"));
//        return $query;
    }
}
