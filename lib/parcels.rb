class Parcels
  define_method(:initialize) do |params|
    @volume = params[0].to_i * params[1].to_i * params[2].to_i
    @weight = params[3].to_i
  end

  define_method(:cost_to_ship) do
    (@volume * @weight) / 4
  end

  define_method(:volume) do
    @volume
  end

end
