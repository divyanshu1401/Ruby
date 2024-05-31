class Product < ApplicationRecord
    # Callbacks for Creation
    # before_validation :before_validation_callback
    # after_validation :after_validation_callback
    # before_save :before_save_callback
    # around_save :around_save_callback
    before_create :before_create_callback
    around_create :around_create_callback
    after_create :after_create_callback
    after_save :after_save_callback
    after_commit :after_commit_callback
    after_rollback :after_rollback_callback # Added for transaction rollback
  
    # Callbacks for Update
    # before_update :before_update_callback
    # around_update :around_update_callback
    # after_update :after_update_callback
  
    # # Callbacks for Destroy
    # before_destroy :before_destroy_callback
    # around_destroy :around_destroy_callback
    # after_destroy :after_destroy_callback
  
    # Callback Methods (simply print their names)

    # private

    def before_validation_callback
      puts "before_validation"
    end

    def after_validation_callback
        puts "after_validation_callback"
    end

    def before_save_callback
        puts "before_save_callback"
    end

    def around_save_callback
        puts "around_save_callback"
    end

    def before_create_callback
        puts "before_create_callback"
    end

    def around_create_callback
        puts "around_create_callback"
    end

    def after_create_callback
        puts "after_create_callback"
    end

    def after_save_callback
        puts "after_save_callback"
    end

    def after_commit_callback
        puts "after_commit_callback"
    end

    def after_rollback_callback
        puts "after_rollback_callback"
    end
  end
  