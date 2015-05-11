class Fixnum
  define_method(:ping_pong) do
    new_array = []
    self.times() do |time|
      var = time.+(1)
      if var.%(3) == 0 && var.%(5) == 0
        new_array.push("ping-pong")
      elsif var.%(3) == 0
        new_array.push("ping")
      elsif var.%(5) == 0
        new_array.push("pong")
      else
        new_array.push(var)
      end
    end
    new_array
  end
end

#something
