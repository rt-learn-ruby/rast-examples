# frozen_string_literal: true

require 'rast'
require './examples/prime_number'

rast PrimeNumber do
  spec '#prime?' do
    execute do |number|
      result subject.prime?(number)
    rescue StandardError
      result(:ERROR)
    end
  end
end
