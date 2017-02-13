class AddStatusTypeToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :status_type, :string
  end
end
