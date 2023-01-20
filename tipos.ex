defmodule Tipos do
  @moduledoc """
    Módulo para testar os tipos do Elixir.

    Usarei a função IO.puts para mostrar os dados na tela.
  """

  @doc """
    Mostra uma váriavel do tipo Inteiro.

    Pode ser escrito de forma binária. Ex: 0b1010.
    Pode ser escrito de forma decimal. Ex: 1.
    Pode ser escrito de forma hexadecimal. Ex: 0x1F.
  """
  def ver_inteiro do
    inteiro = 8
    IO.puts inteiro
  end


  @doc """
    Mostra uma variável do tipo Decimal;

    Ex: 1.0.
  """
  def ver_decimal do
    decimal = 2.0
    IO.puts decimal
  end


  @doc """
    Mostra uma váriavel do tipo Átomo.

    :atom
    Uma das features do Elixir. Um :atom é um tipo de dado cujo valor é o
    próprio nome. Dessa forma, :banana tem o valor banana.
    Você pode usar is_atom() para checar se um dado é um átomo.
  """
  def ver_atomo do
    atomo = :teste
    IO.puts atomo
  end


  @doc """
    Mostra uma váriavel do tipo Booleano.

    Possui os valores true ou false. Todo boolean é um :atom.
  """
  def ver_booleano do
    booleano = true
    IO.puts booleano
  end


  @doc """
    Mostra uma váriavel do tipo Cadeia de Caracteres (String).

    Uma string é definida por aspas e tem o charset UTF-8.
    Ex: "E quando você me disser oi, eu vou responder oi, com meu peito
    gritando te amo". É possível interpolar strings.
  """
  def ver_strings do
    caracteres = "Testezinho brabo"
    interpolacao = "Veja: #{caracteres}"
    IO.puts caracteres
    IO.puts interpolacao
  end

  @doc """
    Mostra uma váriavel do tipo Função.

    É possível atribuir uma função sem nome pra uma variável.

    Ex: fn a,b -> a + b end

    É necessário usar o "." depois da variável que contém a função anônima
    para que o Elixir não confunda ela com um função nomeada como funcao.
    Funções anônimas podem usar funções já previamente definidas.
  """
  def testar_funcao do
    funcao = fn a,b -> a - b end
    IO.puts funcao.(5,3)
    dobrar = fn a -> funcao.(3 * a, a) end
    IO.puts dobrar.(5)
  end

  @doc """
    Mostra uma váriavel do tipo Lista Encadeada.

    Definidas por colchetes.
    Ex: [1, 2, 3].
    Imprime a lista como caracteres.
  """
  def ver_lista do
    lista = [111, 105, 12]
    IO.puts lista
  end

  @doc """
    Mostra uma váriavel do tipo Tupla.

    Quase como os mixed arrays de JS, só que declarado com chaves.
    Ex: {1, 2, "teste", 5}
  """
  def ver_tupla do
    tupla = {9, 10, :oi, true, "kk eae man"}
    IO.puts elem tupla, 1
    IO.puts elem tupla, 2
    IO.puts elem tupla, 4
  end

  @doc """
    Mostra uma váriavel do tipo Lista IO.

    Lista convencional, mas com apenas dados binários ou listas de
    dados binários. Quando encaminhada para uma interface IO, a
    lista se torna plana.
  """
  def ver_lista_io do
    lista_io = []
    lista_io = [lista_io, "Ola"]
    lista_io = [lista_io, " mundo"]
    lista_io = [lista_io, " via"]
    lista_io = [lista_io, " lista"]
    lista_io = [lista_io, " IO!"]

    IO.puts lista_io
  end
end
