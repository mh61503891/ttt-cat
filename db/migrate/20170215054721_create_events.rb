class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :fid
      t.string :remote_ip
      t.string :request_method
      t.text :request_path
      t.text :query_string
      t.text :request_uri
      t.text :http_user_agent
      t.text :http_dnt
      t.text :http_accept
      t.text :http_accept_encoding
      t.text :http_accept_language
      t.text :params
      t.timestamps
    end
    %i(fid remote_ip request_method request_path).each do |column|
      add_index :events, column
    end
  end
end
