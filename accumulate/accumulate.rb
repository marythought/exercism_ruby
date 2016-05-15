# Sources: https://www.practicingruby.com/articles/building-enumerable-and-enumerator
# & https://github.com/bbatsov/powerpack/tree/master/lib/powerpack/enumerable

unless Enumerable.method_defined? :accumulate
  module Enumerable
    def accumulate
      result = []
      each { |e| result << yield(e) }
      result
    end
  end
end
