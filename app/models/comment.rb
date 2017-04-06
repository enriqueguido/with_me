class Comment < ApplicationRecord
    attr_accesssible :body, :commenter, :event
    belongs_to :event
end
