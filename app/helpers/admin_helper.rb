module AdminHelper
  
  def room_color(room)
    if room.status == 'Müsait'
      "card bg-success text-white shadow"                                                
    else
      "card bg-danger text-white shadow"   
    end                         
  end
end
