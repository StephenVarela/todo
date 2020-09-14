FactoryBot.define do
  factory :task do
    title { 'Task 1' }
    description { 'First Task' }
    due_date { Date.today }
    completed { false }
  end
end 