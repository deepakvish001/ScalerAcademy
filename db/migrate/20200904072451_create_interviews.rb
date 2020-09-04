class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :InterviewerMail
      t.string :StudentMail
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
