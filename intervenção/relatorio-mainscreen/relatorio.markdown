# Relatório sobre o Código Flutter

**Grupo:** Instagram

**Aluno:** [Guilherme Borges de Oliveira Rodrigues]

1. **Arquitetura e Organização do Código:**
   - O código está organizado em classes e pacotes, seguindo as convenções do Flutter. Cada arquivo `dart` representa uma tela diferente do aplicativo Instagram, como a tela inicial (`HomeScreen`), tela de perfil (`ProfileScreen`), e tela de busca (`SearchScreen`).

2. **Classe `MainScreen` e Estado:**
   - A classe `MainScreen` é um StatefulWidget que representa a tela principal do aplicativo. Ela controla o estado da tela, incluindo o índice da tela atual, que é usado para determinar qual tela deve ser exibida.

3. **Scaffold e AppBar:**
   - A tela principal utiliza um `Scaffold` como esqueleto básico, fornecendo uma estrutura de layout para a aplicação. Ele contém uma AppBar personalizada, que exibe o título "Instagram" e um ícone de mensagens no canto direito.

4. **Corpo da Tela:**
   - O corpo da tela é definido pelo método `getScreen()`, que retorna a tela correspondente ao índice atual. Isso é feito usando um `switch` com base no valor da variável `index`.

5. **Navegação Inferior:**
   - A parte inferior da tela contém uma barra de navegação com ícones para as principais funcionalidades do aplicativo, como a página inicial, pesquisa, adição de postagens, notificações e perfil do usuário. Cada ícone é um `InkWell` que, quando tocado, atualiza o `index` e, portanto, a tela exibida.

6. **Estilo e Tema:**
   - O código define o estilo da AppBar e da barra de navegação inferior, utilizando a cor de fundo preta e ícones brancos.

7. **Dados Dinâmicos:**
   - No ícone do perfil, uma imagem de perfil é carregada de forma dinâmica de uma URL da web. Isso sugere que o código está preparado para exibir dados dinâmicos de um servidor.

Em resumo, o código implementa a estrutura básica de uma tela principal para um aplicativo Instagram, com navegação entre diferentes telas e ícones de funcionalidades principais. Ele utiliza os princípios fundamentais do Flutter, como Widgets, State, Scaffold, AppBar e Navegação, para construir uma interface de usuário funcional e responsiva.
