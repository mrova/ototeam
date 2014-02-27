class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :dt
      t.text :description
      t.datetime :invite_dt_from
      t.datetime :invite_dt_to
      t.integer :participant_min
      t.integer :participant_max
      t.text :answer_limit
      t.boolean :im_in
      t.boolean :publish_present

      t.timestamps
    end
  end
end
