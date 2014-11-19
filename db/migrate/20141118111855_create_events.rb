class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :place
      t.datetime :startdate
      t.datetime :enddate
      t.datetime :createtime

      t.timestamps
    end
  end
end
