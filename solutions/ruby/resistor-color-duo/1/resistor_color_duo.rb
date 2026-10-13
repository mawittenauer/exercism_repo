module ResistorColorDuo
  COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']
  def self.value(resistors)
    resistors[0..1].map { |r| COLORS.index(r) }.join.to_i
  end
end
