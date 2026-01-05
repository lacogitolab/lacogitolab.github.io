# Ruby 3.2+ compatibility shim for liquid gem
# The liquid 4.0.3 gem uses the deprecated tainted? and untaint methods which were removed in Ruby 3.2+
# This shim adds them back for compatibility

if RUBY_VERSION >= "3.2.0"
  class String
    def tainted?
      false
    end

    def untaint
      self
    end
  end

  class NilClass
    def tainted?
      false
    end
  end

  # Add to Object to cover all cases
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end
  end
end

