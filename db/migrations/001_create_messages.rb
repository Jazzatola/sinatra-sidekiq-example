Sequel.migration do
  change do
    create_table(:messages) do
      primary_key :id
      String :text, null: false
      DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP
      DateTime :updated_at, default: Sequel::CURRENT_TIMESTAMP
    end
  end
end
