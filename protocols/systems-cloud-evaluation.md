# Protocolo: Avaliação de Sistemas e Cloud

Use para avaliar desempenho, escalabilidade, disponibilidade, confiabilidade, custo, eficiência energética ou comportamento operacional de sistemas.

## Workload e contexto

Defina workload, perfil de entrada, concorrência, duração, distribuição, dados, cenário de carga e relevância para o uso pretendido. Evite benchmark sintético sem explicar sua relação com o caso de uso.

## Ambiente

Registre hardware, região/cloud, tipo de instância, sistema operacional, kernel, runtime, versões, configurações, limites, serviços gerenciados, rede, observabilidade e custo.

## Execução

- Use warm-up quando necessário.
- Execute repetições e reporte variância.
- Registre p50/p95/p99 quando caudas forem relevantes.
- Controle ou declare interferência, cache, autoscaling, throttling e ruído de multitenancy.
- Defina política para falhas, timeout e degradação.

## Análise

Separe throughput, latência, uso de recursos, custo e confiabilidade. Discuta trade-offs, ponto de saturação, limites de capacidade e condições em que a proposta deixa de ser vantajosa.
