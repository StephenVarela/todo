require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe 'index' do
    let!(:task) { FactoryBot.create(:task) }
    let!(:task2) { FactoryBot.create(:task, title: 'Cool Task') }

    it 'returns all the tasks' do
      get tasks_path
      
      expect(response).to be_successful
      expect(response.body).to include(task.title)
      expect(response.body).to include(task2.title)      
    end
  end
end
