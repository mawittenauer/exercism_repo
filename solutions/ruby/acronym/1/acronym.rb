module Acronym
  def self.abbreviate(phrase)
    phrase = phrase.gsub('-', ' ')
    phrase = phrase.gsub('_', ' ')
    phrase.split(' ').map { |w| w[0].upcase }.join('')
  end
end
