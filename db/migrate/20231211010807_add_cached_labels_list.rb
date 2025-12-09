class AddCachedLabelsList < ActiveRecord::Migration[7.0]
  def change
    add_column :conversations, :cached_label_list, :string unless column_exists?(:conversations, :cached_label_list)
    Conversation.reset_column_information if defined?(Conversation)
    # ActsAsTaggableOn cache is already enabled via acts_as_taggable_on in Labelable concern
  end
end
