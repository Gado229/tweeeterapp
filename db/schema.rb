ActiveRecord::Schema.define(version: 2022_03_17_204613) do

  enable_extension "plpgsql"

  create_table "twits", force: :cascade do |t|
    t.text "content"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
