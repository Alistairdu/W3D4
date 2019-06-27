# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord

# #validate for when user types in the wrong input 
validates :username, presence: true 

has_many :authored_polls, 
  primary_key: :id, 
  foreign_key: :author_id,
  class_name: :Poll

has_many :responses, 
  primary_key: :id,
  foreign_key: :respondent_id,
  class_name: :Response
end
