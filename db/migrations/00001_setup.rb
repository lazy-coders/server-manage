class Setup < ActiveRecord::Migration
	def up
		create_table :users do |t|
			t.string :name
			t.date :reg_date
			t.date :last_access
		end

		create_table :services do |t|
			t.string :name
			t.text   :description
		end

		create_table :configs do |t|
			t.id :user
			t.id :service
			t.string :param
			t.string :value
		end
	end

	def down
		drop_table :users
	end
end
