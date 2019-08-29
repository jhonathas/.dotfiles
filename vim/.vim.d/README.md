# Instalar MacVim

```
brew install macvim
brew install python
pip3 install neovim
```

# Instalação
```bash
sh -c "`curl -fsSL https://raw.github.com/diegonogueira/vim-dotfiles/master/install.sh`"
```

# Para usar o plugin ack + the_silver_searcher, instalar:

```brew install the_silver_searcher```

# Instalar plugin

# Adicionar em vundle.vim e rodar no terminal:

```vim +PluginInstall +qall```

# Atualizar plugins

```vim +PluginUpdate +qall```

# Como usar

* [Modos](#modos)
* [Navegação](#navegação)
* [Digitação](#digitação)
* [Excluindo caracteres](#excluindo-caracteres)
* [Copiar e colar](#copiar-e-colar)
* [Selecionando ( modo visual )](#selecionando--modo-visual-)
* [Buscando no arquivo](#buscando-no-arquivo)
* [Buscando e alterando trechos](#buscando-e-alterando-trechos)
* [Trabalhando com arquivos](#trabalhando-com-arquivos)
* [Janelas, buffers](#janelas-buffers)
* [File explorer](#file-explorer)
* [Desfazendo e refazendo](#desfazendo-e-refazendo)
* [Ordenando linhas](#ordenando-linhas)
* [Vimgrep ( busca em todos os arquivos ) lento!](#vimgrep--busca-em-todos-os-arquivos--lento)
* [Ack + The Silver Searcher ( busca em todos os arquivos )](#ack--the-silver-searcher--busca-em-todos-os-arquivos-)
* [Find and replace all](#find-and-replace-all)
* [Indentação](#indentação)
* [Manipulando texto](#manipulando-texto)
* [Macro](#macro)
* [Auto-complete](#auto-complete)
* [Máquina do tempo](#máquina-do-tempo)
* [CtrlP ( Gerenciador de projetos )](#ctrlp--gerenciador-de-projetos-)
* [Tabular](#tabular)
* [Multiple cursors](#multiple-cursors)
* [EasyMotion](#easymotion)
* [NERDCommenter](#nerdcommenter)
* [Surround](#surround)
* [NERDTree](#nerdtree)
* [Emmet ( html )](#emmet--html-)
* [Ultisnips ( snippets )](#ultisnips--snippets-)
* [Dash ( documentação )](#dash--documentação-)
* [Debug ( performance )](#debug--performance-)
* [Outros](#outros)
* [Dúvidas](#dúvidas)

### Modos

| Modo      | Comando                     |
| -------   | --------------------------- |
| Normal    | ```<CTRL-[> OU <ESC>```     |
| Inserção  | ```<i, I, a, A, o, O...>``` |
| Visual    | ```<v, V, Ctrl-v>```        |
| Comando   | ```<ESC> :```              |

### Navegação

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```<Ctrl-[>``` OU <br> ```<Ctrl-c>``` OU <br> ```<ESC>``` | Sai do modo de edição                |
| ```h```                                                   | Move o cursor para trás        |
| ```j```                                                   | Move o cursor para baixo       |
| ```k```                                                   | Move o cursor para cima        |
| ```l```                                                   | Move o cursor para frente      |
| ```w```                                                   | Move o cursor para o início da próxima palavra  |
| ```W```                                 | Move o cursor para o início da próxima palavra, desconsiderando hífen |
| ```e```                                   | Move o cursor para o final da próxima palavra  |
| ```E```                                   | Move o cursor para o final da próxima palavra, desconsiderando hífen  |
| ```b```                                                         | Move o cursor para o início da palavra anterior |
| ```ge```                                                         | Vai para o final da palavra anterior |
| ```;```                                                         | Vai para a próxima palavra Camelcase |
| ```gg```                                                         | Vai para o início do arquivo |
| ```G```                                                         | Vai para o final do arquivo |
| ```0```                                                         | Vai para o início da linha |
| ```^```                                                         | Vai para o início da linha, ignorando espaço |
| ```$```                                                         | Vai para o final da linha |
| ```:<n>``` OU<br> ```G+<n>``` OU<br> ```<n>+gg```               | Vai para a linha <n> |
| ``` `` ```                                                         | Volta para a linha que estava antes do goto |
| ```f+<c>```                                                         | Vai para o primeiro caracter <c> a frente |
| ```t+<c>```                                                         | Vai para o primeiro caracter <c> a frente, posicionando no caracter anterior |
| ```F+<c>```                                                         | Vai para o primeiro caracter <c> a frente |
| ```T+<c>```                                                         | Vai para o primeiro caracter <c> a trás, posicionando no caracter anterior |
| ```*```                                                         | Vai para próximo caracter selecionado |
| ```zt```                                                         | Move o cursor para o topo da página |
| ```zz```                                                         | Move o cursor para final da página |
| ```%```                                                         | Vai para o parênteses correspondente ) } ] |
| ```)```                                                         | Pula uma sentença para frente |
| ```(```                                                         | Pula uma sentença para trás |
| ```}```                                                         | Pula um paragrafo para frente |
| ```{```                                                         | Pula um paragrafo para trás |
| ```<n>+Navegação```<br>```Ex: 3w```<br>```Ex: 5k```  | Diz o quantificador e a forma de navegação desejada <br> Move para a 3 palavra <br> Move para 5 linhas acima|
| ```Ctrl+f```                                                         | Desce a paginação |
| ```Ctrl+b```                                                         | Sobre a paginação |

### Digitação

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```i```                                                   | Entra em modo edição antes do caracter atual |
| ```I```                                                   | Entra em modo de edição no começo da linha |
| ```a```                                                   | Entra em modo de edição após o caracter atual |
| ```A```                                                   | Entra em modo de edição no final da linha |
| ```o```                                                   | Entra em modo de edição uma linha abaixo |
| ```O```                                                   | Entra em modo de edição uma linha acima |
| ```s```                                                   | Entra em modo de edição apagando o caracter da frente |
| ```S```                 | Entra em modo de edição no início da linha indentado ( quando não for espaço ) |
| ```<n>i<c> <ESC>```                                       | Adiciona <c> <n> vezes atual |
| ```r```                                           | Abre o modo insert para trocar pelo caracter selecionado, após a troca, automaticamente volta para modo normal |
| ```R```                                                   | Abre o modo insert para trocar pelo caracter selecionado, porém não volta para modo normal. Ele vai alterando os caracteres correspondentes. Igual a tecla <INSERT> |

### Excluindo caracteres

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```dw```                                                   | Apaga uma palavra, posicionado no início da palavra |
| ```diw```                                 | Apaga a palavra atual, não importando em que parte da palavra esta |
| ```daw``` | Apaga a palavra atual e o espaço para a outra palavra, não importando em que parte da palavra esta |
| ```dip```                                                   | Apaga o paragrafo atual |
| ```dap```                                                   | Apaga o paragrafo atual e a linha, posicionando no próximo parágrafo |
| ```d<n>b```                                                   | Apaga <n> vezes as palavras anteriores |
| ```dd```                                                   | Deleta a linha atual |
| ```D```                                                   | Deleta o restante da linha |
| ```C```                                                   | Deleta até o final da linha e muda para modo inserção |
| ```d$```                                                   | Deleta do ponto atual até o final da linha |
| ```d^```                                                   | Deleta do ponto atual até o início da linha do primeiro caracter não espaço |
| ```d0```                                                   | Deleta do ponto atual até o início da linha |
| ```d%```                                                   | Apaga até o fechamento dos ), }, ] |
| ```df<c>```                               | Deleta do ponto atual até a próxima ocorrência encontrada em <c> |
| ```dF<c>```                               | Deleta do ponto atual até a ocorrência anterior encontrada em <c> |
| ```<b>,<e> d```                           | Deleta da linha \<b> até <e> |
| ```x```                                   | Apaga o caracter sob o cursor |
| ```xp```                                  | Troca os caracteres de lugar |
| ```ddp```                                                   | Troca as linhas de lugar |
| ```da”```                                                   | Deleta conteúdo entre aspas |
| ```<n>+Exclusão```<br>```Ex: 5x```<br>```Ex: 5dd``` | Apaga a quantidade de <n> informado ao comando <br> Apaga os próximos 5 caracteres <br> Apaga as próximas 5 linhas |
| ```ciw```                               | Remove a palavra, e troca para modo de inserção |
| ```ci;```                               | Remove a palavra Camelcase, e troca para modo de inserção |
| ```:g/TEXTO/d```                                            | Deleta a palavra Texto no arquivo |
| ```J```                                            | Junta a linha de baixo com a atual |

### Copiar e colar

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```yy OU Y```                                         | Copia a linha atual |
| ```ye```                                              | Copia do cursor até o fim da palavra |
| ```yb```                                              | Copia do cursor ao início da palavra |
| ```yi"```                                             | Copia o conteúdo entre aspas |
| ```yip```                                             | Copia o paragrafo atual |
| ```yit```                                             | Copia a tag atual <h1></h1> |
| ```yf<c>```                                           | Copia até a próxima ocorrência encontrada |
| ```yF<c>```                                           | Copia até ocorrência anterior encontrada |
| ```<n>Y```                                            | Copia <n> linhas |
| ```<b>,<e> Y```                                       | Copiar da linha \<b> até <e> |
| ```p```                                               | Cola o que foi copiado ou deletado uma linha abaixo |
| ```P```                                               | Cola o que foi copiado ou deletado uma linha acima |
| ```]p```                                              | cola o que foi copiado ou deletado após o cursor |
| ```:20,30m 10```                                      | Move a da linha 20 até 30 para a linha 10 |
| ```:m-5```                                            | Move a linha atual 5 posições acima          |
| ```:m$```                                             | Move a linha atual para o final              |
| ```:10t.```                                           | Copia a linha 10 para a linha atual          |
| ```:t10```                                            | Copia a linha atual para a linha 10          |
| ```yyp OU :t.```                                      | Duplica a linha atual                        |
| ```:t$```                                             | Copia a linha atual para o final do arquivo  |
| ```Vjj :t10```                                        | Copia o conteúdo selecionado para a linha 10 |
| ```:m10```                                            | Move a linha atual para a linha 10           |
| ```:10m.```                                           | Move a linha 10 para a linha atual           |
| ```Vjj :m10```                                        | Move o conteúdo selecionado para a linha 10  |

### Selecionando ( modo visual )

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```v```                                           | Entra no modo visual selecionando o caracter |
| ```V```                                           | Entra no modo visual, selecionando a linha |
| ```<C-v>```                                           | Entra no modo visual, selecionando o bloco |
| ```gv```                                           | Vai para a última seleção utilizada |
| ```vap```                                           | Seleciona o paragrafo |
| ```vip```                                           | Seleciona o paragrafo |
| ```vi}```                                           | Seleciona o conteúdo entre {} |
| ```va}```                                           | Seleciona tudo entre {}, inclusive as {} |
| ```vit```                                           | Seleciona o trecho com a tab. <tag>trecho</tag> |
| ```vii```                                           | Seleciona a identação atual |
| ```vi;```                                           | Seleciona a palavra Camelcase |
| ```o```                                           | Alterna entre o início da seleção e depois da seleção. Necessário ter um trecho selecionado |
| ```var a = 1```<br>```var b = 2```<br>```var c = 3```<br>```<C-v>jj$```<br>```A;```<br>```<Ctrl-[>``` | Coloca ; no final de cada linha. |

### Buscando no arquivo

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```/<t> OU <regexp>```<br>```n```<br>```N```  | Pesquisa pela palavra <t> ou pela regexp <br> Move para a próxima ocorrência encontrada <br> Move para a ocorrência anterior |
| ```:noh OU <CTRL-[> <CTRL-[>```                       | Desabilita o highlighting |

### Buscando e alterando trechos

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:s/<b>/<e>```                                  | Muda tudo que achar de \<b> para <e> na linha |
| ```:%s/<b>/<e>```                                 | Muda tudo que achar de \<b> para <e> no arquivo inteiro |
| ```:1,10 s/<b>/<e>```                             | Muda tudo que achar de \<b> para <e> somente da linha 1 a 10 |

### Trabalhando com arquivos

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:w```                          | Salva o arquivo |
| ```:w!```                         | Salva forçando |
| ```:e!```                         | Reinicia a edição, ignorando alterações |
| ```:w arquivo```                  | Salvar como e permanece no arquivo original |
| ```:w! >> arquivo```              | Salvar como e permanece no arquivo original |
| ```:wq```                         | Salva e sai |
| ```:x```                          | Salva se existirem modificações |
| ```:10, 20 w arquivo```           | Salva o trecho selecionado em outro arquivo |
| ```:saveas arquivo```             | Salvar como e abrir o arquivo novo |
| ```:e! arquivo```                 | Abre um novo arquivo sem salvar o atual |
| ```Ctrl-6```                      | Alterna entre dois arquivos abertos |
| ```:r arquivo```                  | Abre o arquivo na linha em questão |
| ```:<n>r arquivo```               | Abre o arquivo na linha <n> |
| ```‘0```                          | Abre o último arquivo editado |
| ```‘1```                          | Abre o penúltimo arquivo editadoo |

### Janelas, buffers

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:buffers```                          | Lista os arquivos abertos |
| ```:buf <n>```                          | Vai para o buffer <n>, listado pelo buffers |
| ```:wn```                          | Salva o arquivo atual e vai para o próximo |
| ```Ctrl-w-v```                          | Cria uma janela ao lado |
| ```Ctrl-w-s```                          | Cria uma janela a baixo |
| ```Ctrl-w-w```                          | Alterna entre as janelas |
| ```Ctrl-w-l```                          | Vai para a janela da direita |
| ```Ctrl-w-h```                          | Vai para a janela da esquerda |
| ```Ctrl-w-j```                          | Vai para a janela a baixo |
| ```Ctrl-w-k```                          | Vai para a janela de cima |
| ```Ctrl-w-o```                          | Vai a janela atual ser única |
| ```Ctrl-w-+```                          | Aumenta o espaço da janela atual |
| ```Ctrl-w--```                          | Diminui o espaço da janela atual |
| ```:wall```                          | Salva todas as janelas |
| ```:qall```                          | Fecha todas as janelas |

### File explorer

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:Vex```                          | Abre o file explorer ao lado |
| ```:Sex```                          | Lista os arquivos abertos |
| ```:buffers```                          | Abre o file explorer a baixo |

### Desfazendo e refazendo

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```u```                          | Desfaz |
| ```U```                          | Desfaz mudanças na linha editada |
| ```Ctrl-r```                          | Refaz |

### Ordenando linhas

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:sort```                          | Ordena |
| ```:sort u```                          | Ordena e remove linhas duplicadas |
| ```:sort n```                          | Ordena numericamente |
| ```:<b>,<e> sort```                          | Ordena da linha \<b> até <e> |

### Vimgrep ( busca em todos os arquivos ) lento!

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:pwd```<br>```:vimgrep /TEXTO/ ./**/*.rb```<br>```cw``` | Abrindo arquivo ruby que contenham a palavra TEXTO |

### Ack + The Silver Searcher ( busca em todos os arquivos )

Instalar o The Silver Searcher: brew install the_silver_searcher

https://github.com/mileszs/ack.vim/blob/master/doc/ack.txt<br>
http://beyondgrep.com/documentation/

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:pwd```<br>```:Ack --ignore-dir=log TEXTO``` | Busca o TEXTO nos arquivos da pasta atual, ignorando a pasta log. |
| ```:pwd```<br>```:Ack --ruby TEXTO``` | Busca o TEXTO nos arquivos da pasta atual, porém somente arquivos ruby ( .rb .rhtml .rjs .rxml .erb .rake .spec; Rakefile; first line matches /^#!.*\bruby/ ) |

### Find and replace all

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:pwd```<br>```:args `Ack --ruby -l TEXTO````<br>```:argdo %s/DE/PARA/gc | update```  | Localiza DE e altera para o PARA, nos arquivos da pasta atual. <br> não se esqueça do -l no Ack. <br > o c é para confirmação, se não quiser confirmar a cada registro encontrado. remova o c. |

### Indentação

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```=```                          | Auto indentação no modo visual. ex: vip = |
| ```==```                          | Auto indentação no modo normal |
| ```=ip``` OU<br>```=ap```         | Auto indentação do paragrafo |
| ```>```                          | Avança para frente o texto em modo visual |
| ```<```                          | Recua em modo visual |
| ```>>```                          | Avança para frente no modo normal |
| ```<<```                          | Recua no modo normal |
| ```>ap```                          | Avança o paragrafo atual |

### Manipulando texto

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```gU```                          | Converte o texto selecionado no modo visual para maiúsculo |
| ```gu```                          | Converte o texto selecionado no modo visual para minúsculo |
| ```gUU```                          | Converte a linha para maiúsculo no modo normal |
| ```guu```                          | Converte a linha para minúsculo no modo normal |
| ```gUiw```                          | Converte a palavra atual para maiúsculo |
| ```gUap OU``` OU<br>```gUip```    | Converte o paragrafo atual para maiúsculo |
| ```gggUG```                          | Converte todo arquivo para maiúsculo |
| ```~```                          | Troca o case do caracter |

### Macro

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```qa```<br>```Faça suas edições serem gravadas```<br>```q```` | Inicia a gravação no registro a <br> . <br> Termina a gravação |
| ```@a```                          | Executa a macro do registro a |
| ```10@a```                          | Roda 10 vezes a macro do registro a |
| ```:reg a```                          | Ve o que esta gravado na macro |

### Auto-complete

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```<C-Space> OU <C-n>```             | Vai para a próxima palavra encontarda. Usar o <C-Space> para não conflitar com o multiple-cursors |
| ```<C-p>```                          | Vai para a palavra anterior encontrada |
| ```<C-y>```                          | Aceita a sugestão |
| ```<C-e>```                          | Reverte para o ponto sem autocomplete |

### Máquina do tempo

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:earlier 10m```                    | Volta o arquivo como estava a 10 minutos atrás |
| ```:later 10m```                      | Após utilizar o earlier, você ir para frente 10 minutos |
| ```:undolist```                       | Lista as modificações no arquivo |
| ```:undo <b>```                      | Volta a versão especifica no undolist |

### CtrlP ( Gerenciador de projetos )

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```,p```                          | Vai para a home do usuário para mudar de projeto |
| ```,t```                          | Abre a busca de arquivo ( vai se basear no projeto que está ) |
| ```,b```                          | Lista os buffers abertos |
| ```<Ctrl>-j / <Ctrl>-k```                          | Navega nos buffers abertos |
| ```<Ctrl-z>```                          | Marca para exclusão |
| ```<Ctrl>-@```                          | Fecha o buffer selecionado ( plugin a parte ) |
| ```,t```<br>```/path/arquivo```<br>```<Ctrl-y>```   | Cria o arquivo |

### Tabular

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```VG:Tabularize /=```                          | Tabula o texto selecionado pelo = |

### Multiple cursors

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```viw```<br>```<C-n>```<br>```<C-x>```<br>```<C-p>```    | Seleciona a palavra <br> Seleciona a próxima palavra <br> Ignora  palavra <br> Volta a seleção da uma palavra |
| ```c```                          | Entra em modo de alteração de todas as seleções |
| ```i```                          | Entra em modo de inserção de todas as seleções |
| ```<C-n>```                     | Seleciona a palavra automaticamente. Dai é só navegar <C-n>, <C-x>, <C-p> |

### EasyMotion

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```,s<c>```                          | Faz a busca de 2 caracteres, indexando atalhos para mover-se |
| ```/<c>```                          | busca <c> no arquivo |
| ```:noh OU <C-[> <C-[>```                          | Desabilita o highlighting |

### NERDCommenter

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```,cc```                          | Comenta |
| ```,ci```                          | Comenta e descomenta |
| ```,cu```                          | Descomenta |

### Surround

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```Selecione em movo visual - S"```          | Coloca entre aspas o conteúdo |
| ```Selecione em movo visual - S<p>```         | Remove “ da palavra |
| ```ds"```                          | Remove “ da palavra |
| ```viwS"```                          | Coloca a palavra entre aspas |
| ```cs”(```                          | Troca “ por ( com espaço |
| ```cs”)```                          | Troca “ por ( sem espaço |

### NERDTree

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```,n```                          | Alterna entre o NERDTree aberto e fechado |
| ```,N```                          | Revela o arquivo no NERDTree |
| ```o```                          | Abre a pasta |
| ```<ENTER>```                          | Abre o arquivo |
| ```j e k```                          | Navegando entre os arquivos |
| ```m```                          | Abre menu com opções para editar, apagar o arquivo |
| ```C```                          | Define a passta como root |

### Emmet ( html )

http://docs.emmet.io/cheat-sheet/<br>
http://docs.emmet.io/<br>
http://docs.emmet.io/abbreviations/syntax/<br>

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```html:5 <ctrl+y+,>```                          | cria um documento padrão html 5 |

### Ultisnips ( snippets )

https://github.com/SirVer/ultisnips

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```class [TAB]```                          | Chama o snippet |
| ```C-j```                          | Vai para a próxima inserção no snippet |
| ```C-k```                          | Volta para a inserção anterior do snippet |

### Dash ( documentação )

Busca na documentação baseando-se pelo tipo do arquivo.

https://github.com/rizzatti/dash.vim

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```,d```                           | Busca no Dash a palavra selecionada. Não precisa selecionar, basta somente deixar o cursor em cima|
| ```,D```                           | Busque no Dash algo baseado no tipo de arquivo em questão |

### Debug ( performance )

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:profile start profile.log```                          | Inicia um profile para debug         |
| ```:profile func *```                                     | Informa que vai depurar todas as funções |
| ```:profile file *```                                     | Informa que vai depurar todos os arquivos |
| ```Faça ação que esta com uma performance ruim```         | ...                                  |
| ```:profile pause```                                      | Pausa a depuração                    |
| ```:noautocmd qall!```                                    | Vecha o vim                          |
| ```cat profile.log```                                     | Visualiza o log                      |

### Outros

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```.```                          | Repete o último comando |
| ```!<b>```                          | Executa o comando bash \<b>. Ex: !ls |
| ```vim -u NONE```                          | Abrir o vim na sua configuração original |
| ```:echo 5 * 3```                          |  Exibe o resultado da multiplicação |

### Dúvidas

* Auto trailling ( remover espaços automaticamente ao salvar? )
* Auto indentação esta ficando em baixo do parênteses
* Abrir nerdtree no projeto do ctrlp
* Como ir até a próxima letra maiúscula ex: ( UsersController ) _Controller
