# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

# Cap10 Fase3

## BMH

## 👨‍🎓 Integrantes: 
- <a href="https://www.linkedin.com/in/bruno-castro-dias/">Bruno Castro - RM558359</a>
- <a href="https://www.linkedin.com/in/hugomariano191628150/">Hugo Mariano - rm560688</a>
- <a href="https://www.linkedin.com/in/matheus-castro-63644b224/">Matheus Castro - RM559293</a> 


## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="https://www.linkedin.com/in/lucas-gomes-moreira-15a8452a/">Lucas Gomesr</a>
### Coordenador(a)
- <a href="https://www.linkedin.com/in/profandregodoi/">Andre Godoi</a>


## 📜 Descrição

📜 Descrição

Para o seguinte projeto, foi feita a geração de dados artificiais simulando condições ambientais reais, como temperatura, pressão atmosférica, altitude e umidade do solo, além da introdução de ruído para simular variações naturais. Esses dados foram utilizados para treinar um modelo de machine learning para prever a necessidade de irrigação.

<a href="https://www.ers.usda.gov/amber-waves/2022/september/brazil-s-momentum-as-a-global-agricultural-supplier-faces-headwinds/">Artigo de inspiração</a>
Como o Sistema Funciona

Geração e Normalização de Dados:

Foi criado um dataset com variáveis ambientais (temperature, pressure, altitude e soilmoisture), categorizado em classes (Very Dry, Dry, Wet, Very Wet) com base em regras lógicas.
Ruído foi adicionado a 30% dos dados para simular variabilidade natural.
Modelagem e Treinamento:

Um modelo Random Forest foi treinado utilizando o dataset gerado artificialmente.
O dataset foi dividido em treino e teste para validação do modelo, garantindo boa generalização.
Consulta de dados e perguntas relevantes:

O modelo foi capaz de responder perguntas como: "Qual é a condição atual do solo?" e "Existe necessidade de irrigação para os dados fornecidos?".
Além disso, foram realizadas previsões sobre novos dados para demonstrar o funcionamento do modelo.
Documentação dos Resultados:

Para finalizar, foi documentado o desempenho do modelo, que atingiu uma acurácia de 85%, indicando que ele pode ser útil em sistemas de irrigação automatizados baseados em dados simulados.


## 📁 Estrutura de pastas

Dentre os arquivos e pastas presentes na raiz do projeto, definem-se:

- <b>Diagramas</b>: Nesta pasta ficarão os diagramas criados.

- <b>Bases</b>:Aqui estará o código em .dll para criação das bases e o arquivo csv que originou o projeto.

- <b>Dicionário</b>: Nesta página haverá o dicionário de dados documentando o que for necessário.

- <b>Processo</b>: Nesta página haverá o o arquivo de python que executa o modelo.

- <b>README.md</b>: arquivo que serve como guia e explicação geral sobre o projeto (o mesmo que você está lendo agora).

## 🔧 Como executar o código


## 🗃 Histórico de lançamentos

*1.0 - 13/11/2024

## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>
