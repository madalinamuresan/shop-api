class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :nume
      t.string :prenume
    end
  end
end
