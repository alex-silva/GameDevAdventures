bitprobe
========

1º projeto Apelsoft

Instalação:

1 - Instale Git: http://git-scm.com/downloads. Selecione a opção para adicioná-lo às variáveis de ambiente do Windows.
Caso não adicione, você não poderá usar o git direto do prompt de comando. Para adicionar variável de ambiente:
- Botão direito em "Meu Computador"
- Opções avaçadas de sistema
- Variáveis de ambiente
- Edite o valor da variável de sistema "path". Adicione no final delimitador ";" e o caminho da sua instala;'ao do git,
por exemplo: ";C:\Program Files (x86)\Git\bin\"

2 - (Opcional mas altamente recomendável)Baixe uma interface gráfica para Git. Recomendo Tortoise Git: https://code.google.com/p/tortoisegit/wiki/Download

3 - Com Tortoise Git, de um clone no seu repositório local usando a branch develop do repositório remoto.

4 - Para desativar prompt de login e senha para todas as operações:

- Crie um arquivo "_netrc" com este conteúdo:

machine github.com
login yourlogin
password yourpassword

- Copy th- Copie o arquivo para qualquer lugar, como "C:\Users\" 

- No prompt de comando, digite "setx home C:\Users\"

- Também no prompt de comando, adicione suas configurações de email e nome do git:

git config --global user.email "your_email@example.com"
git config --global user.name "your_name"
