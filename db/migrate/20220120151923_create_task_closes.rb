class CreateTaskCloses < ActiveRecord::Migration[6.0]
  def change
    create_table :task_closes do |t|
      t.integer  :clean_id , null: false
      t.integer  :money_id , null: false
      t.integer  :trouble_id , null: false
      t.string   :sales_result , null: false
      t.string   :checker , null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
