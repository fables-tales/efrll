Weather = Struct.new(:description)

City = Struct.new(:weather) do
  def weather_description
    weather.description
  end
end
Address = Struct.new(:city) do
  def weather
    city.weather_description
  end
end

Job = Struct.new(:address) do
  def weather
    address.weather
  end
end

j = Job.new(Address.new(City.new(Weather.new("Cloudy"))))

p j.weather
