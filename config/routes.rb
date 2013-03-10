Midori::Engine.routes.draw do
  get "styles" => "static#styles"
  root to: "static#index"
end
