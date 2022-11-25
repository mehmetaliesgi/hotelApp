module AdminHelper
  def short_descripton(description)
    if description.size < 10
      return description
    else
      return description[0..10].strip + "..."
    end
  end

  def room_color(room)
    if room.status == 'Müsait'
      "card bg-success text-white shadow"                                                
    else
      "card bg-danger text-white shadow"   
    end                         
  end
end
