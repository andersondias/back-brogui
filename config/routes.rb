Brogui::Application.routes.draw do
  root to: 'main#index'
  scope 'api' do
    resources :posts
  end
end
