class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :school
      t.integer :salary
      t.text :description

      t.timestamps
    end
  end
end
