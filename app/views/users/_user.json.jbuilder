json.extract! user, :id, :name, :mobi, :email, :adm, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
