# Estrutura inicial do chatbot da Klyvolt.
# Este módulo será usado para criar respostas inteligentes sobre consumo de energia.

def responder(pergunta: str) -> str:
    pergunta = pergunta.lower()

    if "economizar" in pergunta:
        return "Para economizar energia, comece analisando os equipamentos com maior consumo no dashboard."

    if "meta" in pergunta:
        return "As metas ajudam a comparar o consumo atual com o limite mensal definido pela empresa."

    return "Sou o chatbot da Klyvolt. Posso ajudar com dúvidas sobre consumo, metas e sustentabilidade."
