class Dock
attr_reader :name, :max_rental_time, :currently_rented
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @currently_rented = []
    @returned_boats = []
  end

  def rent(boat, renter)
    @currently_rented << boat
    p "#{boat.type} is currently being rented by #{renter.name}"
  end

  def log_hour
    number_of_hours = @currently_rented.count
    p number_of_hours
  end

  def return(boat)
    @currently_rented.delete(boat)
    @returned_boats.push(boat)

    p @returned_boats
  end

  def revenue
    sorted_rented = @currently_rented.group_by do |boat|
      boat.type
    end
    
  end
end
