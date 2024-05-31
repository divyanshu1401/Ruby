posts = Post.all
comments = posts.map(&:comments).flatten
@user_comments = comments.select do |comment|
    comment.author.username == params[:username]
end