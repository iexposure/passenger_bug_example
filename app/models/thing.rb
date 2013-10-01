class Thing < ActiveRecord::Base


  after_initialize :fail_strangely


  def fail_strangely
    dynamic_attribute = "a#{ SecureRandom.hex }".to_sym

    self.class.send :attr_accessor , dynamic_attribute
    self.class.send :validates , dynamic_attribute , presence: true
  end


end
