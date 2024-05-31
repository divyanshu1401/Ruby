class comment
    belongs_to: :commentable, polymorphic: true
end

class Post
    has_may :commentsm, as:commen
end

class Reel
    has_may :commentsm, as:commen
end

id, text, type
class method vs scope
    background jobs