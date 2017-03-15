["ant", "bear", "cat"].any? { |word| word = "cat" }
["ant", "bear", "cat"].any? { |word| word.length >= 3 }
(1..4).collect {|i| i*i}.to_s
(1..4).collect { "cat" }
(1..10).detect { |i| i %5 == 0 and i % 7 == 0 }
(1..100).detect { |i| i %5 == 0 and i % 7 == 0 }
(1..10).find_all { |i| i % 3 == 0 }
(1..10).reject { |i| i % 3 == 0 }
