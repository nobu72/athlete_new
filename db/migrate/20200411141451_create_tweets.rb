class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string  :date           ,null: false
      t.string  :place          
      t.string  :text 
      t.timestamps
    end
  end
end