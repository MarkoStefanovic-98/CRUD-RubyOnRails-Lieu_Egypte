# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_15_233013) do
  create_table "decouvrir", primary_key: ["NroSite", "NroDynastie", "NroOrdre"], charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "NroSite", default: 0, null: false
    t.integer "NroDynastie", default: 0, null: false
    t.integer "NroOrdre", default: 0, null: false
    t.string "Decouverte"
  end

  create_table "dieu", primary_key: "NomDieu", id: :string, default: "", charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "Forme"
    t.string "Représentation"
    t.string "Fonction"
  end

  create_table "dieu_log", primary_key: "NomDieu", id: :string, default: "", charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "NewForme"
    t.string "OldForme"
  end

  create_table "dynastie", primary_key: "NroDynastie", id: :integer, default: 0, charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "NomDynastie"
    t.integer "DebDynastie"
    t.integer "FinDynastie"
    t.integer "NroEpoque"
  end

  create_table "epoque", primary_key: "NroEpoque", id: :integer, default: 0, charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "NomEpoque"
    t.string "CommentEp"
  end

  create_table "lieu", primary_key: "NomLieu", id: :string, default: "", charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.string "situation"
  end

  create_table "lieus", charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "NomLieu"
    t.text "description"
    t.text "situation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharaon", primary_key: ["NroDynastie", "NroOrdre"], charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "NroDynastie", default: 0, null: false
    t.integer "NroOrdre", default: 0, null: false
    t.string "NomPh"
    t.string "NomUsuel"
    t.string "commentPh"
  end

  create_table "site", primary_key: "NroSite", id: :integer, default: 0, charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "NomSite"
    t.string "NomLieu"
    t.string "Détails"
    t.string "NomDieu"
    t.index ["NomSite"], name: "index_nomsite"
  end

  create_table "sites", primary_key: "NroSite", id: :integer, default: 0, charset: "latin1", options: "ENGINE=MyISAM ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "NomSite"
    t.string "NomLieu"
    t.string "Détails"
    t.string "NomDieu"
  end

end
