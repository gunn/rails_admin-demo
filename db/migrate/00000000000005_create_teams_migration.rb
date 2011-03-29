class CreateTeamsMigration < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.timestamps
      t.integer :league_id
      t.integer :division_id
      t.string :name
      t.string :logo_url
      t.string :manager, :null => false
      t.string :ballpark
      t.string :mascot
      t.integer :founded
      t.integer :wins
      t.integer :losses
      t.float :win_percentage
    end
  end

  def self.down
    drop_table :teams
  end
end
