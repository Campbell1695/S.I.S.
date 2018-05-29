class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :content
      t.text :cost
      t.text :description
      t.text :host
      t.text :misc
      t.text :setting

      t.timestamps
    end
  end
end
