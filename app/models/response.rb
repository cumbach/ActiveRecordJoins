class Response < ActiveRecord::Base
  validates :answer_choice_id, presence: true
  validates :user_id, presence: true
  validate :respondent_has_not_already_answered_question

  belongs_to :answer_choice,
    class_name: "AnswerChoice",
    foreign_key: :answer_choice_id,
    primary_key: :id

  belongs_to :respondent,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id

  has_one :question,
    through: :answer_choice,
    source: :question



  def sibling_responses

  end


  def respondent_has_not_already_answered_question
    # respondent = self.respondent
    # answer_choice = self.answer_choice
    # select question_id.*, COUNT(*) from answerchoices
    # join to answerchoice on answer_choice_id = answerchoice.id

    # Want to make sure that for Response#answer_choice_id
    # user_id <= 1
  end


end
