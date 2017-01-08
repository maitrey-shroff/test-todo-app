require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'toggle_complete!' do
    it 'should switch complete to false if true' do
      task = Task.new(:complete => true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end
  end 

  describe 'toggle_favorite!' do
    it 'should switch favorite to false if true' do
      task = Task.new(:favorite => false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end
  end 

  describe 'overdue?' do
    it 'should check if task is overdue' do
      task = Task.new(:deadline => Date.yesterday)
      task.overdue?
      expect(task.overdue?).to eq(true)
    end
  end 

  describe 'toggle_complete!' do
    it 'should switch complete to false if true' do
      task = Task.new(:complete => true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end
  end 

  describe 'toggle_complete!' do
    it 'should switch complete to false if true' do
      task = Task.new(:complete => true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end
  end 

end
