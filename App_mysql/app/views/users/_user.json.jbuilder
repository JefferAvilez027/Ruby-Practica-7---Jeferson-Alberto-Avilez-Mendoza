json.extract! user, :id, :name, :password, :email, :programador, :birthday, :work_time, :created_at, :updated_at
json.url user_url(user, format: :json)
