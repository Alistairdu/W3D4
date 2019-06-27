# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  respondent_id    :integer          not null
#  answer_choice_id :integer          not null
#

class Response < ApplicationRecord
  belongs_to :respondent, 
    primary_key: :id, 
    foreign_key: :respondent_id, 
    class_name: :User

  belongs_to :answer_choice, 
    primary_key: :id, 
    foreign_key: :answer_choice_id, 
    class_name: :AnswerChoice 
end
