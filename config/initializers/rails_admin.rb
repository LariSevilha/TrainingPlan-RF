RailsAdmin.config do |config|
  config.asset_source = :sprockets

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  #trainig
  config.show_gravatar = false
  
   ## Global configuration
   config.main_app_name = ['Área administrativa']
   config.default_items_per_page = 20
   
  config.actions do
  
    config.model 'CategoryExercise' do
      navigation_label 'Treino'
      list do
        field :name
      end
      edit do
        field :name
      end
    end
    
    #training 
   config.model 'Training' do
      navigation_label 'Treino'
      list do
        field :student
      end
      edit do
        field :student do
          inline_add false
          inline_edit false
        end
        field :exercises
      end
    end
    
  #student 
   config.model 'Student' do
    navigation_label 'Treino'
    list do
      field :name
    end
    edit do
      field :name
    end
  end
  
  #exercise
  config.model 'Exercise' do
    visible false
    list do 
      field :category_exercise
    end
    edit do
      field :date
      field :category_exercise do
        inline_add false
        inline_edit false
      end
      field :executions
    end
  end
  
  #execution
  config.model 'Execution' do
    visible false
    list do
      field :name
    end
    edit do
      field :rep
      field :set
      field :obs, :wysihtml5
      field :links
    end
  end
  
  #link
  config.model 'Link' do
    visible false
    list do
      field :title
    end
    edit do
      field :title
      field :link
    end
  end
  
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete 
    show_in_app  
    edit
    delete

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
