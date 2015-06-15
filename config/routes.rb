Rails.application.routes.draw do
  resources :job_templates, :except => [:show] do
    member do
      get 'clone_template'
      get 'lock'
      get 'unlock'
    end
    collection do
      get 'revision'
      get 'auto_complete_search'
    end
  end
end
