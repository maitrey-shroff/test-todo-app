require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'complete_all_tasks!' do
    it 'should mark all tasks as complete' do
      list = List.create(:name => "tasks")
      list.save
      Task.create(:complete => false, :list_id => list.id)
      Task.create(:complete => false, :list_id => list.id)
      Task.create(:complete => false, :list_id => list.id)
      list.complete_all_tasks!
      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

  describe '#snooze_all_tasks!' do
    it 'should snooze each task' do
      list = List.create(name: "Chores")
      task1 = Task.create(complete: false, deadline: Time.new(2016, 1, 1), list_id: list.id)
      task2 = Task.create(complete: false, deadline: Time.new(2016, 1, 1), list_id: list.id)
      list.snooze_all_tasks!
      list.tasks.each do |task|
        expect(task.deadline).to eq(Time.new(2016,1,1)+1.hour)
      end
    end
  end
end
