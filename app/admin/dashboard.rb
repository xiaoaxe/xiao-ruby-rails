ActiveAdmin.register_page 'Dashboard'  do
  # columns 'Recent Posts ' do
  #   table_for Post.order('id desc').limit(10) do
  #     column :id
  #     column 'Post Title', :title do |post|
  #       link_to post.name, [admin,post]
  #     end
  #     column :category,:sortable => :category
  #     column :create_at
  #   end
  #   strong {link_to 'Show All Posts',:posts}

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end
    #
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
