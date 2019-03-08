module FormHelper

  def enter_field_value(field, value, obj = @current_page)

    field = field.formatize

    unless obj.respond_to? field
      raise "no object with name #{field} was found in #{obj.class} class"
    end

    obj.wait_until(60, "Unable to locate #{field} in 60 seconds") { obj.send("#{field}_element").exists? }

    case obj.send("#{field.formatize}_element").class.to_s

      when /textfield/i, /selectlist/i, /filefield/i, /textarea/i
        obj.send("#{field}=", "#{value}") unless obj.send("#{field}") == value
      when /radio/i
        obj.send("select_#{field}_#{value}")
      when /checkbox/i
        if value.downcase == "check"
          obj.send("check_#{field}")
        elsif value.downcase == "uncheck"
          obj.send("uncheck_#{field}")
        end
      else
        raise "wrong object type for this method"
    end

  end

  def click_element(field, obj = @current_page)

    field = field.formatize

    unless obj.respond_to? field
      raise "no object with name #{field} was found in #{obj.class} class"
    end

    obj.wait_until(60, "Unable to locate #{field} in 60 seconds") { obj.send("#{field}_element").exists? }
    obj.send("#{field}_element").click

  end

end

