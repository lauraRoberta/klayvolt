# Estrutura inicial do dashboard da Klyvolt.
# Este módulo poderá gerar métricas, indicadores e gráficos.

def calcular_media(consumos):
    if not consumos:
        return 0
    return sum(consumos) / len(consumos)

def calcular_total(consumos):
    return sum(consumos)

def verificar_status(consumo_atual, meta):
    if consumo_atual >= meta:
        return "Acima da meta"
    if consumo_atual >= meta * 0.8:
        return "Atenção"
    return "Dentro da meta"
