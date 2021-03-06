class ScrabbleWord
	attr_accessor :word, :letter_point

	def initialize(word)
		@word = word.downcase
		@letter_point = {
			a: 1, b: 3, c: 3, d: 2, e: 1,
			f: 4, g: 2, h: 4, i: 1, j: 8,
			k: 5, l: 1, m: 3, n: 1, o: 1,
			p: 3, q: 10, r: 1, s: 1, t: 1,
			u: 1, v: 4, w: 4, x: 8, y: 4,
			z: 10
		}
	end

	def score
		score = 0
		@word.each_char do |letter|
			@letter_point.each do |key, value|
				if letter == key.to_s
					score = score + value
				end
			end
		end
		return score

	end

	def multiplier_score(number)
		return score*number
	end

end

word = ScrabbleWord.new("snowflake")
word.multiplier_score(2)