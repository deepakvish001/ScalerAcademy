module Interviews
  class EmailPresenter
    def initialize(email)
      @email = email.to_s
    end

    def masked
      local, domain = @email.split("@", 2)
      return "" if local.blank? || domain.blank?

      visible = local.first(2)
      "#{visible}#{'*' * [local.length - 2, 1].max}@#{domain}"
    end
  end
end
