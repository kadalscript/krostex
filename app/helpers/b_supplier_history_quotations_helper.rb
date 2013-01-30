module BSupplierHistoryQuotationsHelper
  def harga_link(title, number, object)
    link_to title,
            'javascript:void(0)',
            'data-content' => "Harga #{number}",
            'data-placement' => 'top',
            rel: 'popover',
            'data-original-title' => "Detail Harga #{number}",
            id: "harga_#{number}",
            value: object.id
  end
end
