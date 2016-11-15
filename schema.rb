ActiveRecord::Schema.define(version: 20161108211554) do

    create_table "carriers", force: :cascade do |t|
        t.text   "field_names", default: [], array: true
    end
end
