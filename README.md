# 📱 Todo List – Flutter

Aplicação de **lista de tarefas (Todo List)** desenvolvida em Flutter como prática de desenvolvimento mobile, organização de código e manipulação de dados.

Projeto focado em:
- gerenciamento de tarefas
- navegação entre telas
- uso de formulários
- organização em models e pages
- componentização
- boas práticas em Flutter

---

## 📸 Screenshot

![Screenshot da aplicação](/assets/images/screenshotTela.png)

---

## 🚀 Funcionalidades

✅ Criar novas tarefas  
✅ Visualizar lista de tarefas  
✅ Editar tarefas existentes  
✅ Excluir tarefas  
✅ Formulário para adicionar ou editar tarefas  
✅ Navegação entre telas  
✅ Interface simples e organizada  

---

## 🧩 Estrutura do projeto

### 🔹 Model

**TaskModel**

Responsável por representar a estrutura de uma tarefa contendo:

- título
- descrição
- informações da tarefa

---

### 🔹 Pages

**HomePage**

Tela principal da aplicação onde são exibidas todas as tarefas criadas.

Funcionalidades:

- listar tarefas
- navegar para criação de nova tarefa
- editar tarefas existentes

---

**TaskDetailPage**

Tela responsável por criar ou editar tarefas.

Funcionalidades:

- formulário para inserir título
- campo para descrição
- salvar alterações na tarefa

---

## 🛠️ Tecnologias utilizadas

- Flutter
- Dart
- Material Design

---

## ▶️ Como rodar o projeto

```bash
# clonar
git clone https://github.com/aleehblackstar/todo_list.git

# entrar na pasta
cd todo_list

# instalar dependências
flutter pub get

# executar
flutter run