# tipos.ex
defmodule Tipos do

  # Usarei a função IO.puts para printar na tela

  # No Elixir, temos os tipos:

  # Inteiro ->
  #   Pode ser escrito de forma binária. Ex: 0b1010.
  #   Pode ser escrito de forma decimal. Ex: 1.
  #   Pode ser escrito de forma hexadecimal. Ex: 0x1F.

  def ver_inteiro do
    inteiro = 8
    IO.puts inteiro
  end

  # Float -> Ex: 1.0.

  def ver_decimal do
    decimal = 2.0
    IO.puts decimal
  end

  # :atom ->
  #   Uma das eatures do Elixir. Um :atom é um tipo de dado cujo valor é o
  #   próprio nome. Dessa forma, :banana tem o valor banana.
  #   Você ode usar is_atom() para checar se um dado é um átomo.

  def ver_atomo do
    atomo = :teste
    IO.puts atomo
  end

  # Boolean -> true, false. Todo boolean é um :atom.

  def ver_booleano do
    booleano = true
    IO.puts booleano
  end

  # String ->
  #   Uma string é definida por aspas e tem o charset UTF-8.
  #   Ex: "E quando você me disser oi, eu vou responder oi, com meu peito
  #   gritando te amo". É possível interpolar strings.

  def ver_strings do
    caracteres = "Testezinho brabo"
    interpolacao = "Veja: #{caracteres}"
    IO.puts caracteres
    IO.puts interpolacao
  end

  # Funções anônimas ->
  #   É possível atribuir uma função sem nome pra uma variável.
  #   Ex: fn a,b -> a + b end
  #   É necessário usar o "." depois da variável que contém a função anônima
  #   para que o Elixir não confunda ela com um função nomeada como funcao.
  #   Funções anônimas podem usar funções já previamente definidas.

  def testar_funcao do
    funcao = fn a,b -> a - b end
    IO.puts funcao.(5,3)
    dobrar = fn a -> funcao.(3 * a, a) end
    IO.puts dobrar.(5)
  end

  # Listas Encadeadas ->
  #   Definidas por colchetes.
  #   Ex: [1, 2, 3].
  #   Imprime a lista como caracteres.

  def ver_lista do
    lista = [111, 105, 12]
    IO.puts lista
  end

  # Tuplas ->
  #   Quase como os mixed arrays de JS, só que declarado com chaves.
  #   Ex: {1, 2, "teste", 5}

  def ver_tupla do
    tupla = {9, 10, :oi, true, "kk eae man"}
    IO.puts elem tupla, 1
    IO.puts elem tupla, 2
    IO.puts elem tupla, 4
  end
end
