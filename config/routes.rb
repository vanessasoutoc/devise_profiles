DeviseProfiles::Application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"} do
    root to: "registrations#new"
  end
end
