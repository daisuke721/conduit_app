class AddIntroductionToConduits < ActiveRecord::Migration[6.1]
  def change
    add_column :conduits, :introduction, :string
  end
end
