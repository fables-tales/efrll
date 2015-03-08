################BEFORE####################
Weather = Struct.new(:description)
City = Struct.new(:weather)
Address = Struct.new(:city)

Job = Struct.new(:address) do
  def weather
    address.city.weather.description
  end
end

j = Job.new(Address.new(City.new(Weather.new("Cloudy"))))

p j.weather
################BEFORE####################
#
#################intermediate###########

Weather = Struct.new(:description)
Address = Struct.new(:weather)

Job = Struct.new(:address) do
  def weather
    address.weather.description
  end
end

j = Job.new(Address.new(Weather.new("Cloudy")))

p j.weather

#################intermediate##########
#################AFTER##################

Weather = Struct.new(:description)
City = Struct.new(:weather) do
  def weather_description
    weather.description
  end
end
Address = Struct.new(:city) do
  def weather_description
    city.weather_description
  end
end

Job = Struct.new(:address) do
  def weather_description
    address.weather_description
  end
end


j = Job.new(Address.new(City.new(Weather.new("Cloudy"))))
p j.weather_description

#################AFTER##################

