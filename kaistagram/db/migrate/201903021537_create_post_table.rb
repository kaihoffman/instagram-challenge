class CreatePosts < ActiveRecord::Migration
    def change
        create_table :posts do |t|
            t.belongs_to :user
            t.string :description
            t.string :hashtags
            t.timestamps
