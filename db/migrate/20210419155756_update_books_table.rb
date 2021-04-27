class UpdateBooksTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :books, :user, foreign_key: true
  end
end
