module BSupplierHistoryQuotationsHelper
  def harga_link(number, object)
    penawaran_harga = "penawaran_harga_#{number}".to_sym
    penawaran_tanggal = "penawaran_tgl_#{number}".to_sym
    penawaran_kode = "penawaran_kode_#{number}".to_sym
    data_content = %Q{
      Tanggal: #{object[penawaran_tanggal].strftime('%x')} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      No penawaran: #{object[penawaran_kode]}
    }
    
    link_to object[penawaran_harga],
            'javascript:void(0)',
            'data-content' => raw(data_content),
            'data-placement' => 'top',
            rel: 'popover',
            'data-original-title' => "Detail Harga #{number}",
            id: "harga_#{number}",
            value: object.id
  end
end
