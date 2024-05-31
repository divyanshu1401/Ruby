module FirstConcern
 extend ActiveSupport::Concern

 included do
    before_save :check_if_logged_in
 end

 class_methods do
   def say_hello
      puts "hello"
   end
 end

 def check_if_logged_in
        errors.add(:base, "Condition is not met")
        throw(:abort)
    return false
 end
end