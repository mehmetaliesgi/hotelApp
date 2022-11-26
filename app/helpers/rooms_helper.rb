module RoomsHelper
    def short_descripton(description)
        if description.size < 10
          return description
        else
          return description[0..10].strip + "..."
        end
      end
end
