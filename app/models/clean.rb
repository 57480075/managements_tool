class Clean < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '完了しました' },
    { id: 3, name: '完了できません(汚れあり)' }
  ]

  include ActiveHash::Associations
  has_many :task_open
end
