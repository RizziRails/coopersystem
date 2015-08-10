class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :tipo
      t.text :obs

      t.timestamps
    end
  end
end
