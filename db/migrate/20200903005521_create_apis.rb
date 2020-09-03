class CreateApis < ActiveRecord::Migration[6.0]
  def change
    create_table :apis do |t|
      t.string :domain
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
