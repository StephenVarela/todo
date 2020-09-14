class Task < ApplicationRecord
  def completed?
    completed ? 'yes' : 'no'
  end
end
