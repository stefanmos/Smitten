class AddFieldsToInvites < ActiveRecord::Migration[5.0]
  def up
    change_table :invites do |t|
      t.string :background_color
      t.string :font_color
      t.string :font_family

      t.attachment :header_image
      t.string :wedding_date

      t.attachment :bride_image
      t.string :bride_name
      t.text :bride_description
      t.attachment :groom_image
      t.string :groom_name
      t.text :groom_description

      t.text :about_title
      t.text :about_description

      t.string :map_coordinates
      t.string :map_description
    end
  end

  def down
    change_table :invites do |t|
      t.string :background_color
      t.string :font_color
      t.string :font_family

      t.attachment :header_image
      t.string :header_title
      t.string :wedding_date

      t.attachment :bride_image
      t.string :bride_name
      t.text :bride_description
      t.attachment :groom_image
      t.string :groom_name
      t.text :groom_description

      t.text :about_title
      t.text :about_description

      t.string :map_coordinates
      t.string :map_description
    end
  end
end
