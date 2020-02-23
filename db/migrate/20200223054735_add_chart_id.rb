class AddChartId < ActiveRecord::Migration[6.0]
  
    def change
      add_column :songs, :chart_id, :integer
    end
  
end
