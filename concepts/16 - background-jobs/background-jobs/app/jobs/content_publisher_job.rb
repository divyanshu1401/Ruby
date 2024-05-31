class ContentPublisherJob < ApplicationJob
  queue_as :default

  def perform(post)
    sleep(5)
    Post.create!(title: post[:title], text: post[:text])
  end
end
