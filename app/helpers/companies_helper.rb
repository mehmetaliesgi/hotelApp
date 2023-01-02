module CompaniesHelper
    def short_address(address)
        if address.size < 10
          return address
        else
          return address[0..10].strip + "..."
        end
      end
end
