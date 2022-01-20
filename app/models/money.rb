class Money < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '完了しました' },
    { id: 3, name: '完了できません(不足あり)' }
  ]

  include ActiveHash::Associations
  has_many :task_open
end
