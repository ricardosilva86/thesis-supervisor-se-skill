# Thesis Supervisor for Software Engineering

Uma skill de coorientação técnica e metodológica, sob demanda, para dissertações e teses em Ciência da Computação e Engenharia de Software.

## Comandos operacionais

Os comandos abaixo tornam a skill mais previsível em agentes que suportam arquivos de instrução ou slash commands. Eles não exigem uso em ordem fixa; escolha o comando que reduz a maior incerteza no estágio atual.

| Comando | Quando usar | Resultado principal |
| --- | --- | --- |
| `/thesis-init` | tema, ideia ou projeto inicial | charter, contribuição candidata, riscos e próximo gate |
| `/thesis-rq` | transformar problema em RQ | RQ testável, escopo e evidência necessária |
| `/thesis-method` | desenhar método antes de executar | protocolo, seleção, métricas, validade e reprodução |
| `/thesis-experiment` | planejar ou auditar avaliação | controles de execução, rastreabilidade e status de claims |
| `/thesis-audit` | revisar coerência transversal | lacunas claim → evidência e ações priorizadas |
| `/thesis-review` | revisar capítulo ou seção | diagnóstico científico antes de edição de estilo |
| `/thesis-defense` | preparar arguição/defesa | perguntas prováveis, evidências e ajustes finais |

Cada comando aponta para protocolos, rubricas e templates existentes. A skill continua sob demanda: não há calendário, SLA, cadência de reunião ou obrigação de usar todos os comandos.

### Exemplo de fluxo

```text
/thesis-init
  → thesis-charter.md + contribution-contract.md
/thesis-rq
  → research-protocol.md + claims-ledger.md
/thesis-method
  → experiment-plan.md + dataset-card.md + artifact-manifest.md
/thesis-experiment
  → resultados rastreáveis e status dos claims
/thesis-review
  → capítulos defensáveis
/thesis-audit
  → lacunas priorizadas
/thesis-defense
  → preparação de banca
```

## Objetivo

A skill ajuda a transformar uma ideia em uma pesquisa auditável: problema, lacuna, contribuição, perguntas de pesquisa, desenho metodológico, avaliação, artefato reprodutível e comunicação científica. Ela prioriza validade da inferência, rastreabilidade de evidências, integridade acadêmica e autonomia do estudante.

Ela não substitui orientador humano, programa de pós-graduação, colegiado, CEP/CONEP, parceiro institucional ou banca. Documentos da CAPES são usados apenas como referência pública de qualidade para a Área 02 — Computação; requisitos locais prevalecem.

## Uso

Copie este diretório para o local de skills do seu agente ou carregue `SKILL.md` como instrução de projeto. Mantenha os templates em um repositório separado da tese, ou em uma pasta `research/` do repositório da pesquisa.

Comece com o diagnóstico de `SKILL.md`. Antes de redigir, produza os artefatos adequados ao método e ao gate atual.

### Núcleo recomendado

1. `thesis-charter.md`: contexto, restrições, entregas e principal incerteza.
2. `contribution-contract.md`: problema, lacuna, claim, comparador e limites.
3. `research-protocol.md`: RQs, desenho, dados, métricas, análise e validade.
4. `claims-ledger.md`: rastreabilidade entre claims, evidências, scripts e resultados.
5. `decision-log.md` e `risk-register.md`: decisões e riscos explícitos.

### Escolha do protocolo

| Situação | Arquivos principais |
| --- | --- |
| Comparar técnicas/ferramentas | `empirical-experiment.md`, `experiment-plan.md` |
| Avaliar LLM/agente | `llm-agent-evaluation.md`, `benchmark-card.md`, `dataset-card.md` |
| Avaliar sistemas/cloud | `systems-cloud-evaluation.md`, `artifact-manifest.md` |
| Analisar repositórios | `mining-software-repositories.md`, `dataset-card.md` |
| Investigar contexto real | `case-study.md`, `research-protocol.md` |
| Construir artefato | `design-science.md`, `artifact-manifest.md` |
| Fazer SLR/MLR | `systematic-review.md`, `research-protocol.md` |
| Pesquisa de segurança | `security-research.md`, política de dados/ética |
| Dissertação profissional | `professional-thesis.md` e cadeia de impacto |

## Ciclo de trabalho

1. Identifique o gate científico atual no `SKILL.md`.
2. Escolha o protocolo e preencha o mínimo de templates que reduz a maior incerteza.
3. Registre cada decisão que muda método, dados, baseline, métrica ou claim.
4. Faça o experimento/análise com versão, configuração, logs e política de falhas rastreáveis.
5. Atualize `claims-ledger.md` antes de escrever Resultados ou Conclusão.
6. Revise capítulos pelo protocolo `chapter-review.md`: função e evidência antes de estilo.
7. Antes da defesa, rode `defense-readiness.md` e a rubrica correspondente.

## Princípios

- Uso sob demanda: não pressupõe frequência de uso, reuniões, disponibilidade de professor ou SLA.
- Evidência antes de prosa: claims precisam de escopo, evidência, artefato e limitações.
- Rigor antes de estilo: revise contribuição, método e validade antes de redação.
- Reprodutibilidade como entrega: resultados devem ser rastreáveis a versões, dados, scripts e ambiente.
- Decisão humana quando necessária: a skill prepara um brief, mas não presume aprovação institucional.

## Estrutura

- `SKILL.md`: comportamento do coorientador e gates científicos.
- `policy/`: alinhamento CAPES, integridade e escalonamento.
- `protocols/`: protocolos especializados por método.
- `templates/`: artefatos persistentes para a pesquisa.
- `rubrics/`: critérios para auditar RQ, contribuição, validade, resultados, artefato e defesa.
- `examples/`: desenhos ilustrativos de estudos em Engenharia de Software.

## Limites

- A skill não certifica conformidade com CAPES, regulamentos institucionais ou comitês de ética.
- Ela não substitui orientação, avaliação ou autorização humana.
- Ela não fabrica fontes, dados, resultados, execução, aprovações ou claims.
- Para dados pessoais, sigilo, IP, parceiros, sistemas de terceiros ou vulnerabilidades, use a política de dados/ética e escale decisões formais.

## Licença

MIT.
