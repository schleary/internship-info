class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :url
      t.integer :rating
      t.text :languages
      t.string :end
      t.text :team_project
      t.string :team_size
      t.string :company_size
      t.text :women_diversity
      t.text :intern_supports
      t.text :mentor_names_and_contact_info
      t.string :pairing
      t.text :product_clients
      t.text :perks
      t.string :interior_images
      t.string :contact
      t.string :salaries

      t.timestamps
    end
  end
end
