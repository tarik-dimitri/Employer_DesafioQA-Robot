# 📌 Projeto Desafio QA - Testes Automatizados

Bem-vindo ao repositório de testes automatizados do **Sistema de Gestão de Identidades Digitais (SGID)**. Este projeto foi desenvolvido utilizando **Robot Framework** com a biblioteca **SeleniumLibrary** para garantir a qualidade e automação dos processos de cadastro.

---

## 📂 Estrutura do Projeto

```
PROJETO_SGID_TESTS/
│── assets/                 # Arquivos de mídia e imagens de teste
│── logs/                   # Capturas de tela e logs de execução
│── results/                # Resultados e relatórios dos testes
│── resources/              # Componentes reutilizáveis dos testes
│   ├── components/
│   │   ├── elementos.robot # Elementos da UI utilizados nos testes
│   │   ├── variaveis.robot # Variáveis globais do projeto
│   ├── keywords.robot      # Keywords personalizadas
│── test/                   # Casos de teste automatizados
│   ├── cadastro_erro.robot    # Testes de fluxo com erro
│   ├── cadastro_sucesso.robot # Testes de fluxo com sucesso
│── README.md               # Documentação do projeto
```

---

## 🚀 Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- [Python](https://www.python.org/)

---

## 🎯 Como Executar os Testes

### 🔧 1. Pré-requisitos
Antes de rodar os testes, certifique-se de que possui os seguintes itens instalados:

- Python 3.8
- Robot Framework
- SeleniumLibrary
- Um WebDriver compatível com o navegador utilizado nos testes

Para instalar todas as dependências necessárias, execute:

```sh
pip install -r requirements.txt
```

### ▶️ 2. Executando os Testes
Para rodar todos os testes da suíte, utilize:

```
robot -d results test/
```

Para rodar um único teste, utilize:

```
robot -d results test/cadastro_sucesso.robot
```

Os relatórios serão gerados na pasta `results`.

### 📸 3. Capturas de Tela
Os screenshots são armazenados na pasta `logs/` automaticamente ao final de cada teste.

---

## 🛠️ Manutenção e Contribuição

Caso encontre algum bug ou tenha sugestões de melhorias, sinta-se à vontade para abrir uma **issue** ou enviar um **pull request**. 

📌 **Mantenedor:** Tarik Dimitri

---
