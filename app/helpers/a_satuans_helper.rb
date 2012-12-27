module ASatuansHelper
  def satuan_column(column)
    case column
    when 'nama'
      "nama satuan"
    when 'updated_by'
      "di update oleh"
    else
      column.gsub('_', ' ')
    end
  end
end
