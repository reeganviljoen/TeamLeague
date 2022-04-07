class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :team_1, null: false, foreign_key: true
      t.references :team_2, null: false, foreign_key: true
      t.string :team_1_score
      t.string :team_2_score

      t.timestamps
    end
  end
end