json.extract! alert, :id, :user_id, :cryptocurrency, :target_price, :status, :created_at, :updated_at
json.url alert_url(alert, format: :json)
