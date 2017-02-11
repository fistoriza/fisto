class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.string :item
      t.text :description
      t.timestamps
    end
  end
end
