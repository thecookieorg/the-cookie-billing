class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :stripe_id
      t.string :name
      t.integer :amount
      t.integer :trial_period_days
      t.string :interval

      t.timestamps null: false
    end
  end
end
