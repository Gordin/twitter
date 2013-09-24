module Twitter
  class Creator

    def self.new(method, klass, attrs={})
      type = attrs.fetch(method.to_sym)
      const_name = type.gsub(/\/(.?)/){"::#{$1.upcase}"}.gsub(/(?:^|_)(.)/){$1.upcase}
      klass.const_get(const_name.to_sym).new(attrs)
    end

  end
end