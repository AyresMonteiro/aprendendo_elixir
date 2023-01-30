defmodule Tipos do
  @moduledoc """
    Módulo para testar os tipos do Elixir.

    Usarei a função IO.puts para mostrar os dados na tela.
  """

  @atributo 19

  defp ver_item_intervalo(item) do
    IO.puts "item: #{item}"
  end

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
    Mostra se um valor está dentro da lista.
  """
  def ver_lista do
    lista = [111, 105]
    IO.puts lista
    IO.puts 111 in lista
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

  @doc """
    Mostra um atributo do módulo.

    Atributos são valores definidos de forma estática em um módulo
    durante a compilação.
  """
  def ver_atributo do
    IO.puts @atributo
  end

  @doc """
    Mostra um valor nil.

    Nil é similar ao "nulo" de outras linguagens.
  """
  def ver_nil do
    IO.puts nil
    IO.puts "Nil não tem exibição visual"
  end

  @doc """
    Mostra uma variável do tipo mapa.

    Similar aos dicionários do python ou às structs do C.
  """
  def ver_mapa do
    mapa1 = %{:chave => :valor}
    mapa2 = %{chave: :segundo_valor}
    mapa3 = %{mapa2 | chave: :terceiro_valor}
    mapa4 = Map.put(mapa3, :segunda_chave, :quarto_valor)
    mapa5 = Dict.put(mapa4, :terceira_chave, :quinto_valor)
    IO.puts mapa1[:chave]
    IO.puts mapa2[:chave]
    IO.puts mapa3.chave
    IO.puts mapa4.segunda_chave
    IO.puts mapa5.terceira_chave
  end

  @doc """
    Mostra uma variável do bitstring.

    Cada "caractere" pode ter o tamanho máximo de um byte.
    Dessa forma, valores acima de 255 são "truncados".
    É possível escrever em bits específicos usando a notação "::"
  """
  def ver_bitstring do
    bitstring1 = <<1, 2, 3>>
    bitstring2 = <<0>>
    bitstring3 = <<256>>
    bitstring4 = <<1::4, 15::4>>

    IO.puts bitstring1
    IO.puts bitstring2
    IO.puts bitstring3
    IO.puts bitstring4
    IO.puts bitstring3 == bitstring2
  end

  @doc """
    Mostra uma variável do tipo intervalo.

    Intervalos são definidos pela sintaxe inicio..fim.
  """
  def ver_intervalo do
    intervalo = 1..10

    IO.puts 1 in intervalo
    IO.puts 11 in intervalo
    1..3 |> Enum.each(&ver_item_intervalo/1)
  end

  @doc """
    Mostra uma variável do tipo keyword list.

    Aproximação do tipo map antes do mesmo existir no Erlang.
  """
  def ver_keyword_list do
    k_list = [{:chave, 123}, {:segunda_chave, 124}]

    IO.puts k_list[:chave]
    IO.puts Keyword.get(k_list, :segunda_chave)
  end

  @doc """
    Mostra uma variável do tipo HashDict.

    Dicionário performático para coleções de dados enormes.
    Ordem dos valores é variável.
  """
  def ver_hash_dict do
    # Conceito de enumerables e collectables aplicado
    h_dict =  [{:chave, 123}, {:segunda_chave, 124}] |> Enum.into(HashDict.new)
    outro_h_dict = HashDict.put(h_dict, :terceira_chave, 125)

    IO.puts h_dict[:chave]
    IO.puts HashDict.get(h_dict, :segunda_chave)
    IO.puts HashDict.get(outro_h_dict, :terceira_chave)
  end

  @doc """
    Mostra uma variável do tipo HashSet.

    Igual ao HashDict, mas ao invés de ser chave-valor é apenas
    valor.
  """
  def ver_hash_set do
    h_set =  [:primeiro, :segundo] |> Enum.into(HashSet.new)

    IO.puts h_set |> Enum.each(&ver_item_intervalo/1)
  end
end
