require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe 'index' do
    it 'returns all the tasks' do
      get tasks_path
      
      expect(response).to be_successful
    end
  end
end
