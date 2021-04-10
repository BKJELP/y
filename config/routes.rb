Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Créer une tâche
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  
  # Lister toutes les tâches
  get "tasks", to: "tasks#index"

  # Lire une seule tâche
  get "tasks/:id", to: "tasks#show", as: :task

  # Modifier les infos d'une tâche
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Supprimer une tâche
  delete "tasks/:id", to: "tasks#destroy"
end
