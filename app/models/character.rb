class Character < ActiveRecord::Base

  scope :excluding, -> (*characters) { where(["characters.id NOT IN (?)", (characters.compact.flatten.map(&:id) << 0)]) }

  def random_opener
    send(['opener1', 'opener2'].sample)
  end

  def random_reply
    send(['reply1', 'reply2', 'reply4', 'reply4'].sample)
  end
end
