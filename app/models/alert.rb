class Alert < ApplicationRecord
    belongs_to :user
    enum :status, [ :inactive, :active ]
    def self.send_messages

        AlertMailer.send_alert_email(current_user.email,).deliver_now
    end

end
