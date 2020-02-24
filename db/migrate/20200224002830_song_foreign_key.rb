class SongForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :songs, :charts
  end
end
