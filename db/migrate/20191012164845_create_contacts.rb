class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :messaqe

      t.timestamps
    end
  end
end
