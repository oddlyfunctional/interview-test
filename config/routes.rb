Rails.application.routes.draw do
  root to: "app#bootstrap"
  post "/items/tick"
end
