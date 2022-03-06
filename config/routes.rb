Rails.application.routes.draw do
  root "blogs#index"
  resources :blogs
  
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/your/endpoint"
  end
end
