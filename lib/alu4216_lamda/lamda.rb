
module ULL
  module ETSII
    module AluXXX
      module LambdaRegexp

        def epsilon
        lambda {|x| x }
        end

        def star (r)
        lambda { |x| plus(r) [x] or epsilon[x]}
        end

        def plus (r)
        lambda { |x| seq(r,star(r)) [x]}
        end

        def seq(left, right)
        lambda { |x| w=left[x] and right[w] }
        end

        def char (c)
        lambda {|x| x[0,c.length] == c and x[c.length..-1]}
        end

        def alt(left,right)
        lambda { |x| left[x] or right[x] }
        end

        end
     end
  end
end

