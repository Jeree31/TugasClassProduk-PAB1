class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double hitungTotalHargaTanpaDiskon() {
    return harga * jumlah;
  }

  double hitungTotalHargaSetelahDiskon() {
    double totalHarga = hitungTotalHargaTanpaDiskon();
    return totalHarga - (totalHarga * diskon / 100);
  }

  void tampilkanInformasiProduk() {
    print('Nama Produk: $namaProduk');
    print('Harga Satuan: Rp ${harga.toStringAsFixed(0)}');
    print('Jumlah: $jumlah');
    print('Diskon: ${diskon.toStringAsFixed(0)}%');
    print('\nTotal Harga Tanpa Diskon: Rp ${hitungTotalHargaTanpaDiskon().toStringAsFixed(0)}');
    print('Total Harga Setelah Diskon: Rp ${hitungTotalHargaSetelahDiskon().toStringAsFixed(0)}');
  }
}

void main() {
  Produk kamera = Produk("Kamera", 1500000, 2, 10);

  kamera.tampilkanInformasiProduk();
}