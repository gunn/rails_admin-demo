RailsAdmin.config do |c|
  c.excluded_models << RelTest << FieldTest
  c.navigation.max_visible_tabs 99
  
  c.model User do
    list do
      field :id
      field :email
      field :sign_in_count
    end
  end
end