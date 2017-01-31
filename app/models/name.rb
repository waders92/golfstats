module Name

  def name
    @name ||= [first_name, last_name].join(" ")
  end

end
