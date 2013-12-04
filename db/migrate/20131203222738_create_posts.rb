class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :Content
      t.string :Title
      t.string :Recepients

      t.timestamps
    end
  end
end
