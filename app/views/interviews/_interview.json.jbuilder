json.extract! interview, :id, :InterviewerMail, :StudentMail, :start_time, :end_time, :created_at, :updated_at
json.url interview_url(interview, format: :json)
