class Primos

	def self.listar(n)

		array = Array.new

		elem = 2

		while array.size < n do 

			if is_numero_primo?(elem)
				array.push(elem)
			end
			elem = elem + 1
		end

		return array

	end

	def self.is_numero_primo?(n)

		primo = true

		for i in 2..(Math.sqrt(n)) do
			if n % i == 0 then
				primo = false
			end
		end

		return primo

	end

end
