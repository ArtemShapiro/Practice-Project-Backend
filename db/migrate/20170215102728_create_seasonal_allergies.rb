class CreateSeasonalAllergies < ActiveRecord::Migration[5.0]
    def change
        create_table :seasonal_allergies do |t|
            t.string :name
            t.date :begin_at
            t.date :end_at

            t.references :user, foreign_key: true, null: false
        end
    end
end
