class Interview < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :InterviewerMail, presence: true, format: { with: VALID_EMAIL_REGEX }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :StudentMail, presence: true, format: { with: VALID_EMAIL_REGEX }
end
