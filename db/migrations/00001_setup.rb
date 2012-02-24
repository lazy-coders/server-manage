class Setup < ActiveRecord::Migration
	def up
		create_table :users do |t|
			t.string :name
			t.date :reg_date
			t.date :last_access
			t.timestamps
		end

		create_table :services do |t|
			t.string :name
			t.text   :description
			t.timestamps
		end

		create_table :configurations do |t|
			t.references :user
			t.references :service
			t.timestamps
		end
	end

	def down
		drop_table :configurations
		drop_table :users
		drop_table :services
	end
end
