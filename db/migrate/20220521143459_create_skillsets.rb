class CreateSkillsets < ActiveRecord::Migration[7.0]
  def change
    create_table :skillsets do |t|
      t.string :expertise
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
