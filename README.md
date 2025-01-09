## Flutter App - Setup Guide

### Descrição
Este é um projeto Flutter que demonstra funcionalidades como:
- Uso de **FocusNode** para gerenciar o foco automático em campos de texto.
- Exibição de mensagens de login bem-sucedido utilizando **ScaffoldMessenger**.

---

### Requisitos
Certifique-se de ter os seguintes itens instalados:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android Studio ou VS Code com as extensões Flutter e Dart
- Git
- Um dispositivo ou emulador configurado (Android/iOS)

Para verificar se o Flutter está corretamente instalado, execute:
```bash
flutter doctor
```

---

### Passo a Passo

1. **Clone o Repositório**
   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   ```
   Substitua `seu-usuario/seu-repositorio` pelo caminho correto do seu repositório.

2. **Acesse o Diretório do Projeto**
   ```bash
   cd seu-repositorio
   ```

3. **Instale as Dependências**
   ```bash
   flutter pub get
   ```

4. **Configure um Dispositivo ou Emulador**
   Certifique-se de que um dispositivo ou emulador esteja configurado. Verifique se ele é reconhecido pelo Flutter:
   ```bash
   flutter devices
   ```

5. **Rode o Aplicativo**
   ```bash
   flutter run
   ```

---

### Funcionalidades do App

1. **Uso de FocusNode**
   - O campo "Login" é automaticamente focado ao abrir a tela.
   ```dart
   WidgetsBinding.instance.addPostFrameCallback((_) => _focusNode.requestFocus());
   ```

2. **Mensagens de Login**
   - Em caso de sucesso:
     ```dart
     scaffoldMessenger('Bem-vindo', AppColors.success, context);
     ```
   - Em caso de erro:
     ```dart
     scaffoldMessenger('Login ou senha incorreto', AppColors.error, context);
     ```

3. **Botões Personalizados**
   - Botões criados com reutilização em mente:
     ```dart
     buttonCustom('Entrar', () => login(), AppColors.buttons);
     ```

4. **TextFormFields Personalizados**
   - Campos de texto reutilizáveis com opções flexíveis:
     ```dart
     textFormFieldCustom(
       controller,
       'Label',
       'Hint',
       true,
       isObscured,
       true,
       Icons.visibility,
       () => toggleIcon(),
       FocusNode(),
     );
     ```

---

### Problemas Comuns e Soluções

1. **Erro ao Rodar o App:**
   - Execute os seguintes comandos para limpar e reinstalar dependências:
     ```bash
     flutter clean
     flutter pub get
     flutter run
     ```

2. **Dispositivo Não Reconhecido:**
   - Certifique-se de que o dispositivo ou emulador está configurado corretamente e reinicie-o.

---

### Contribuição
Contribuições são bem-vindas! Por favor, abra um Pull Request com suas sugestões ou melhorias.

---

### Licença
Este projeto está licenciado sob a [MIT License](LICENSE).
