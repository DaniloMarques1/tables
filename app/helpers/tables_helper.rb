module TablesHelper
  def total_label
    if (is_open())
      return "Sub total"
    end

    return 'Total'
  end

  def current_total
    items = @items
    total = 0
    items.each { | item |
      total += (item.price * item.quantity)
    }

    return total
  end

  def has_items
    return @items.size != 0
  end

  def is_open
    return @table.open
  end

  def close_table_path
    table_id = @table.id
    return "/tables/#{table_id}"
  end

  def open_label(table)
    if table.open
      return "Aberta"
    else
      return "Fechada"
    end
  end

  def quantity_total
    tot = 0
    @items.each { |item|
      tot += item.quantity
    }

    return tot
  end
end

