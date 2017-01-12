class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
#create index user_id
	 #t.belongs_to :user, index: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
