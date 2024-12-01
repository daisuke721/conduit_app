class CreateConduits < ActiveRecord::Migration[6.1]
  def change
    create_table :conduits do |t|
      t.string :title
      t.string :context
      t.string :tag

      t.timestamps
    end
  end
end
