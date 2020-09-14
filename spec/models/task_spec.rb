require 'rails_helper'

RSpec.describe :task, type: :model do             
  describe '.completed?' do
    let(:task_uncomplete) { FactoryBot.create(:task) }
    let(:task_complete) { FactoryBot.create(:task, completed: true) }
    
    it 'returns yes if true' do
      expect(task_uncomplete.completed?).to eq('no')
    end

    it 'returns no if false' do
      expect(task_complete.completed?).to eq('yes')
    end
  end
end 