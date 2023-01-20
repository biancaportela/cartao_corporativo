# Análise exploratória de dados das despesas com Cartão de Pagamento do Governo Federal.

[Veja a análise completa com o código neste link](https://rpubs.com/biancaportela/cartao-corporativo)


No dia 12 de janeiro de 2023 foram divulgados os dados dos gastos do CPGF (Cartão de Pagamento do Governo Federal) [^1]. Por curiosidade resolvi analisar a planilha, a intenção inicial era fazer um comparativo entre os gastos do diversos governos com dados corrigidos pela inflação.

Para tal, utilizo o pacote do R `deflateBR` [^2], que extrai dados dos principais índices de preços da API do IPEA, compatibiliza as datas mensais desses índices com as datas dos valores nominais da série e, por fim, deflaciona e retorna os valores corrigidos. O índice escolhido foi o IPCA (Índice Nacional de Preços ao Consumidor Amplo), por ser o principal índice brasileiro de inflação.

- Os maiores gastos foram feitos durante o governo Lula e há considerável diminuição das compras a partir do governo Dilma/Temer.
<p align="center">
<img src="https://github.com/biancaportela/cartao_corporativo/blob/9dc6e7f03f99460c5d6a5db1d3617cd5992ddd03/imagens/%C3%ADndice.png"  width="500" height="300">
</p>
<br>

- A grande maioria das despesas é feita em hospedagem ou alimentação.

<p align="center">
<img src="https://github.com/biancaportela/cartao_corporativo/blob/9dc6e7f03f99460c5d6a5db1d3617cd5992ddd03/imagens/categoria.png"  width="500" height="300">
</p>
<br>

- Hospedagem é a categoria com mais gastos, com o valor acumulado de R$ 99.546.417 (valores corrigidos pelo IPCA dez-2022) ao longo dos últimos 20 anos.



|  SUBELEMENTO.DE.DESPESA                       | media_def  |  soma_def |  
|-----------------------------------------------|------------|-----------|
|  HOSPEDAGENS                                  |   2197.978 |  99546417 |   
|  LOCACAO DE MEIOS DE TRANSPORTE               |  15367.409 | 30888492  |   
|   GENEROS DE ALIMENTA??                       |  1139.291  | 28390005  |  
|   FORNECIMENTO DE ALIMENTA??                  |   3597.323 |  23735135 |
|   SERV.DE APOIO ADMIN.,TECNICO E OPERACIONAL  | 2637.830   |  12875250 |


- Desde o início da série foram gastos R$ 210.556.492  no CPGF.

- Há de se destacar as despesas no Mercadinho La Palma LTDA ao longo dos anos: foram 6.351.730 reais gastos no estabelecimento, o local com maior soma de gastos durante a série.

|   NOME.FORNECEDOR                                | frequencia  |  total    |  media    | max
|--------------------------------------------------|-------------|-----------|-----------|-----------
|  MERCADINHO LA PALMA LTDA                        |  3591       |  6351730  | 1768.791  | 29558.52 
|  FULL TIME LOCA?? E SERVI?OS S/C LTDA            |  377        | 5721221   | 15175.651 | 302776.87 
|  COMPANHIA BRASILEIRA DE DISTRIBUI??             |    4710     | 4558705   | 967.878   | 13052.78 
|  BOURBON IBIRAPUERA HOTEL & CONVENTION           |    2617     |  4407385  | 1684.137  | 110884.13 
|  P.J.P. LOCA??S E SERVI?OS LTDA - BRAS?IA RENT A |     276     | 3273551   | 11860.691 | 93727.96 

Acompanhando a evolução  nos gastos no Mercadinho La Palma LTDA...

<p align="center">
<img src="https://github.com/biancaportela/cartao_corporativo/blob/9dc6e7f03f99460c5d6a5db1d3617cd5992ddd03/imagens/mercadinho.png"  width="500" height="300">
</p>
<br>

Entretanto, desde o começo da análise até a presente data, muitas dúvidas surgiram sobre a qualidade dos dados divulgados, o que põe em cheque qualquer tipo de comparação entre os governos. Segundo reportagem do UOL [^3], não se sabe se os gastos do presidente são referentes a apenas gastos individuais ou se englobam outras secretarias. Além disso, há inconsistências entre os dados apresentados na planilha e os divulgados no portal da transparência [^4].

Ainda assim, continuei a análise por curiosidade. Entretanto, é interessante ter uma boa dose de ceticismo ao fazer comparações.


[^1]: [A planilha de gastos pode ser encontrada aqui](https://www.gov.br/secretariageral/pt-br/acesso-a-informacao/informacoes-classificadas-e-desclassificadas)
[^2]: [Mais sobre o pacote](https://fmeireles.com/blog/rstats/deflacionar-series-no-r-deflatebr/)
[^3]: [Gasto de Bolsonaro com cartão corporativo foi quase o triplo do divulgado](https://noticias.uol.com.br/politica/ultimas-noticias/2023/01/17/gastos-cartao-corporativo-maiores-divulgado.htm)
[^4]: [Gastos de Bolsonaro com cartão corporativo podem ter sido maiores do que o divulgado, diz jornalista](https://g1.globo.com/podcast/o-assunto/noticia/2023/01/17/gastos-de-bolsonaro-com-cartao-corporativo-podem-ter-sido-maiores-do-que-o-divulgado-diz-jornalista.ghtml)

