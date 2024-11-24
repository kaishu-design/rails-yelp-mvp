class AddImageToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :image, :string, default: "https://media.istockphoto.com/id/1446478827/photo/a-chef-is-cooking-in-his-restaurants-kitchen.jpg?s=612x612&w=0&k=20&c=jwKJmGErrLe2XsTWNYEEyiNicudYVA4j8jvnTiJdp58="
  end
end
