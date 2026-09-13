# `/thesis-experiment` — Planejar ou Auditar Experimento

## Finalidade

Planejar uma execução ou auditar um experimento já rodado. Nunca invente resultados, logs ou execução.

## Carregar

- `protocols/empirical-experiment.md`
- protocolo especializado aplicável
- `templates/experiment-plan.md`
- `templates/artifact-manifest.md`
- `rubrics/validity-threats.md`

## Planejamento

Antes de executar, confirme:

- RQ, claim e unidade experimental;
- tratamentos e baselines justos;
- dados, versões, critérios de inclusão/exclusão e ground truth;
- métricas primárias/secundárias e definição operacional;
- hardware, software, configurações, seeds, warm-up e repetições;
- orçamento de tempo, tokens, chamadas ou infraestrutura;
- timeout, retries, falhas e outputs inválidos;
- scripts que gerarão resultados, tabelas e figuras.

## Auditoria de execução

Quando a pessoa trouxer resultados, separe:

- `[EVIDÊNCIA]`: logs, tabelas, versões, dados e scripts fornecidos;
- `[INFERÊNCIA]`: o que a evidência permite concluir;
- `[EVIDÊNCIA PENDENTE]`: o que falta para confirmar claim ou robustez;
- `[RISCO]`: viés, vazamento, comparação injusta, variação ou erro de instrumentação.

Não aceite média isolada como conclusão completa quando há variância, aleatoriedade ou caudas relevantes. Exija análise por erro/categoria quando o agregado esconder comportamento crítico.

## Arquivos a criar ou atualizar

- `experiment-plan.md`
- `artifact-manifest.md`
- `claims-ledger.md`
- `risk-register.md`
- `decision-log.md` para desvios de protocolo

## Saída obrigatória

| Controle | Status | Evidência | Ação antes de executar/publicar |
| --- | --- | --- | --- |
| Baseline justo |  |  |  |
| Dados/versionamento |  |  |  |
| Métricas |  |  |  |
| Repetições/variação |  |  |  |
| Rastreabilidade |  |  |  |
| Ameaças |  |  |  |

## Critério de término

No planejamento, termine quando G4 estiver atendido. Na auditoria, termine com uma lista priorizada de claims sustentados, inconclusivos, refutados ou bloqueados.
