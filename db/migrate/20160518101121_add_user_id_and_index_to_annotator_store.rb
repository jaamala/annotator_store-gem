class AddUserIdAndIndexToAnnotatorStore < ActiveRecord::Migration
  def change
    add_column :annotator_store_annotations, :user_id, :integer
    add_index :annotator_store_annotations, [:user_id, :uri]
  end
end
