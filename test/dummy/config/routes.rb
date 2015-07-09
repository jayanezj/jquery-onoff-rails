Dummy::Application.routes.draw do
  get "/switchers", :to => "pages#switchers"
  get "/checked_switcher", :to => "pages#checked_switcher"
end
