# Klyvolt

Plataforma de controle da utilização e gestão das fontes de energia em pequenas empresas.

## Proposta

A Klyvolt é uma solução tecnológica que ajuda pequenas empresas a monitorar o consumo de energia, acompanhar metas, visualizar indicadores em dashboard e receber orientações por meio de um chatbot com inteligência artificial.

## Objetivo

Desenvolver um sistema acessível que transforme dados de consumo em decisões inteligentes, ajudando na redução de desperdícios, economia financeira e promoção de hábitos sustentáveis.

## ODS

- ODS 7 — Energia limpa e acessível
- ODS 11 — Cidades e comunidades sustentáveis

## Estrutura do projeto

```text
klyvolt
├── backend
│   ├── app.py
│   ├── chatbot
│   │   └── __init__.py
│   ├── dashboard
│   │   └── __init__.py
│   └── dados
│       ├── consumo_energia.csv
│       └── metas_consumo.csv
├── frontend
│   ├── paginas
│   │   ├── index.html
│   │   ├── dashboard.html
│   │   ├── chatbot.html
│   │   ├── cadastros.html
│   │   └── sobre.html
│   ├── css
│   │   └── base.css
│   ├── js
│   │   └── main.js
│   └── assets
│       └── logo_klyvolt.png
├── banco_de_dados
│   └── script_klyvolt.sql
├── documentacao
└── redes_sociais
```

## Tecnologias

- HTML
- CSS
- JavaScript
- Python
- FastAPI
- PostgreSQL
- CSV
- Dashboard
- Chatbot com IA

## Como rodar o backend

Entre na pasta backend:

```bash
cd backend
```

Instale as dependências:

```bash
pip install -r requirements.txt
```

Rode o servidor:

```bash
uvicorn app:app --reload
```

Depois acesse:

```text
http://127.0.0.1:8000
```

## Identidade visual

- Nome: Klyvolt
- E-mail: klyvolt.team@gmail.com
- Slogan: Energia sob controle.
- Cores:
  - #0E1726
  - #4B5B6B
  - #16C7B7
  - #D9E2EC
  - #F7F9FC
