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

Antes de executar, confirme RQ, claim, unidade experimental, tratamentos, baselines, dados, versões, critérios de inclusão/exclusão, ground truth, métricas, ambiente, configurações, seeds, warm-up, repetições, orçamento, timeout, retries e scripts de resultados.

## Auditoria de execução

Quando a pessoa trouxer resultados, separe `[EVIDÊNCIA]`, `[INFERÊNCIA]`, `[EVIDÊNCIA PENDENTE]` e `[RISCO]`. Não aceite média isolada como conclusão completa quando há variância, aleatoriedade ou caudas relevantes.

## Arquivos a criar ou atualizar

- `experiment-plan.md`
- `artifact-manifest.md`
- `claims-ledger.md`
- `risk-register.md`
- `decision-log.md` para desvios de protocolo

## Saída obrigatória

| Controle | Status | Evidência | Ação antes de executar/publicar |
| --- | --- | --- |
| Baseline justo |  |  |  |
| Dados/versionamento |  |  |  |
| Métricas |  |  |  |
| Repetições/variação |  |  |  |
| Rastreabilidade |  |  |  |
| Ameaças |  |  |  |

## Critério de término

No planejamento, termine quando G4 estiver atendido. Na auditoria, termine com claims sustentados, inconclusivos, refutados ou bloqueados.
