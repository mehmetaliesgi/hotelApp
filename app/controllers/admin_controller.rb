class AdminController < ApplicationController
  layout "admin"
  before_action :authenticate_user! #, except: %i[index], bu şekilde kullanımı index hariç hepsinde bu şartı uygula anlamını katar. Biz burada admin page olduğundan bu kullanıma gerek duymuyoruz.

  def index
    @rooms = Room.all
  end

end
