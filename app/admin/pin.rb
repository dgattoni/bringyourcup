ActiveAdmin.register Pin do
  form do |f|
    f.inputs "Seccion 1" do
      #cargamos un SELECT EN  http://localhost:3000/admin/pins/24/edit Lo arreglamos para 
      f.input :user_id, :label => 'Usuarios',  :as => :select, :collection => User.all.map{|u| [u.email, u.id]}

          #f.input :user_id, :label => 'Member', :as => :select, :collection => User.all.map{|u| ["#{u.last_name}, #{u.first_name}", u.id]}

      f.input :title
      f.input :description
      f.input :photo

    end

    f.actions
  end

  permit_params :title, :photo, :description, :user_id

end