class CreateThreadtitles < ActiveRecord::Migration[6.0]
  def change
    create_table :threadtitles do |t|
      t.string :name

      t.timestamps
    end
  end
end
