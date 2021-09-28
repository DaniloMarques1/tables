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
      puts("Item price = ", item.price)
      puts("Item qtt = ", item.quantity)
      total += (item.price * item.quantity)
    }

    puts("Total = ", total)
    return total
  end

  def has_items
    return @items.size != 0
  end

  def is_open
    return @table.open
  end
end

