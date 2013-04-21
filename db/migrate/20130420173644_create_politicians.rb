require_relative '../config'

class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :title, :firstname, :middlename, :lastname, :name_suffix, :nickname, :party, :state, :district, :gender, :website, :webform, :congress_office, :bioguide_id, :votesmart_id, :fec_id, :govtrack_id, :crp_id, :twitter_id, :congresspedia_url, :youtube_url, :facebook_id, :official_rss

      t.integer :phone, :fax, :in_office, :senate_class 
      
      t.date :birthdate
    end
  end

end
