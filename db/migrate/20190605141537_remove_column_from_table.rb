class RemoveColumnFromTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :start_time
    remove_column :offers, :end_time

    add_column :bookings, :start_time, :datetime
    add_column :bookings, :end_time, :datetime

    remove_column :users, :cpf
    remove_column :users, :phone

  end
end
