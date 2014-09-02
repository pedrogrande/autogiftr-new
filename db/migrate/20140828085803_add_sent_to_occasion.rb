class AddSentToOccasion < ActiveRecord::Migration
  def change
    add_column :occasions, :sent, :boolean, default: false
  end
end
