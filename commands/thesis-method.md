# `/thesis-method` — Desenhar Método

## Finalidade

Converter RQs e claims em um método defensável antes de iniciar coleta, implementação de avaliação ou escrita do capítulo de método.

## Roteamento

- comparação de técnicas: `empirical-experiment.md`;
- LLM/agente: `llm-agent-evaluation.md` + experimento;
- repositórios: `mining-software-repositories.md`;
- contexto organizacional: `case-study.md`;
- artefato: `design-science.md`;
- revisão: `systematic-review.md`;
- cloud/sistemas: `systems-cloud-evaluation.md`;
- segurança: `security-research.md` + política de dados/ética;
- pesquisa profissional: `professional-thesis.md`.

## Procedimento

1. Para cada RQ, defina unidade de análise, população, dados/participantes, seleção, tratamento/fenômeno, comparador, métricas e análise.
2. Teste a cadeia: claim → RQ → desenho → evidência → inferência permitida.
3. Identifique confundidores, vazamento temporal, viés de seleção, diferença de orçamento e ameaças de constructo.
4. Defina versões, ambiente, seeds, repetições, política de falhas e rastreabilidade antes da execução.
5. Classifique riscos: bloqueante, importante ou aceitável com limitação explícita.
6. Emita `[NEEDS_HUMAN_DECISION]` quando método, ética, acesso, sigilo, participantes ou escopo exigirem aprovação.

## Arquivos a criar ou atualizar

- `research-protocol.md`
- `experiment-plan.md`, se aplicável
- `dataset-card.md` e/ou `benchmark-card.md`
- `risk-register.md`
- `decision-log.md`
- `artifact-manifest.md`

## Saída obrigatória

```text
Método proposto
- Tipo:
- Unidade de análise:
- Dados/participantes:
- Comparador:
- Métricas:
- Análise:

Ameaças prioritárias
- Constructo:
- Interna:
- Externa:
- Conclusão:

Próximo gate
- G3 → G4
- Critério de aceite:
```

## Critério de término

Termine quando cada RQ tiver evidência, seleção, baseline/comparador quando aplicável, métrica operacional, plano de análise e ameaças prioritárias registradas.
