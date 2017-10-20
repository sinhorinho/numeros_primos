# Public: Classe que trabalha com numeros primos
class Primos
  class << self
    # Public: Retorna um array com os numeros primos
    # %n - Quantidade de numeros primos que retornarao
    def listar(n)
      array = []
      elem = 2
      while array.size < n
        array.push(elem) if numero_primo? elem
        elem += 1
      end
      array
    end

    private

    def numero_primo?(n)
      primo = true
      (2..Math.sqrt(n)).each do |i|
        primo = false if (n % i).zero?
      end
      primo
    end
  end
end
