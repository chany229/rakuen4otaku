Rakuen4otaku::Admin.controllers :base do
  get :index, :map => "/" do
    render "base/index"
  end
end
