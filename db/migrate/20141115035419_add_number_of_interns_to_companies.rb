class AddNumberOfInternsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :number_of_interns, :integer
  end
end
