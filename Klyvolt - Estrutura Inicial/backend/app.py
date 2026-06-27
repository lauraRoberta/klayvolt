from fastapi import FastAPI
from fastapi.responses import RedirectResponse
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(
    title="Klyvolt API",
    description="API inicial da plataforma Klyvolt: gestão inteligente de energia para pequenas empresas.",
    version="1.0.0"
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Primeira rota GET apontando para a página inicial do projeto
@app.get("/")
def pagina_inicial():
    return RedirectResponse(url="/frontend/paginas/index.html")

# Rota simples de teste da API
@app.get("/api/status")
def status():
    return {
        "projeto": "Klyvolt",
        "status": "API funcionando",
        "mensagem": "Energia sob controle."
    }

@app.get("/api/consumo")
def listar_consumo():
    return [
        {
            "codigo": 1,
            "nome": "Ar-condicionado",
            "descricao": "Equipamento de climatização do escritório",
            "quantidade": 2,
            "valor": 42.5,
            "indicador": "Consumo alto",
            "data": "2026-06-26",
            "horario": "14:00"
        },
        {
            "codigo": 2,
            "nome": "Iluminação",
            "descricao": "Lâmpadas internas da empresa",
            "quantidade": 18,
            "valor": 18.2,
            "indicador": "Consumo normal",
            "data": "2026-06-26",
            "horario": "14:00"
        },
        {
            "codigo": 3,
            "nome": "Computadores",
            "descricao": "Computadores utilizados no setor administrativo",
            "quantidade": 6,
            "valor": 25.8,
            "indicador": "Atenção",
            "data": "2026-06-26",
            "horario": "14:00"
        }
    ]

@app.get("/api/metas")
def listar_metas():
    return {
        "codigo": 1,
        "nome": "Meta mensal de consumo",
        "descricao": "Meta definida para controle da energia elétrica da empresa",
        "quantidade": 1,
        "valor": 300,
        "indicador": "71% da meta utilizada",
        "data": "2026-06-26",
        "horario": "14:00"
    }

@app.get("/api/chatbot")
def chatbot_exemplo():
    return {
        "resposta": "Olá, eu sou o assistente da Klyvolt. Posso ajudar você a entender seu consumo de energia e encontrar pontos de economia."
    }
