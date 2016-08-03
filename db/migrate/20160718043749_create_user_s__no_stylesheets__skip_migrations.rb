class CreateUserSNoStylesheetsSkipMigrations < ActiveRecord::Migration
  def change
    create_table :user_s__no_stylesheets__skip_migrations do |t|

      t.timestamps null: false
    end
  end
end
