class BirthdayList
  def initialize
    @list = []
  end

  def add(name, birthday)
    @list << { name: name, birthday: birthday }
  end

  def show
    @list.each do |friend| 
      puts "#{friend[:name]}, #{friend[:birthday]}" 
    end
  end
end
