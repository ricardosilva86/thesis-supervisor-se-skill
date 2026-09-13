# Exemplo: Agente LLM para Revisão de Pull Requests

Este exemplo mostra como aplicar a skill a uma pesquisa de Engenharia de Software. É um desenho ilustrativo, não um resultado experimental nem uma alegação sobre um produto específico.

## Problema

Equipes podem receber muitas mudanças e ter cobertura variável de revisão. Um agente de LLM pode apontar problemas, mas também pode gerar falsos positivos, omitir defeitos ou consumir recursos excessivos.

## Claim candidato

> Em pull requests TypeScript selecionados por protocolo, um agente de revisão com recuperação de contexto pode aumentar a identificação de defeitos relevantes em comparação com um baseline sem recuperação, sob orçamento equivalente de chamadas e tokens, com limitações de benchmark e ground truth.

## Perguntas de pesquisa

| ID | Pergunta | Evidência esperada |
| --- | --- | --- |
| RQ-1 | O agente identifica mais defeitos relevantes que os baselines? | precisão, recall, F1 e análise de erros |
| RQ-2 | Qual é o custo e a latência por pull request? | logs de tokens, chamadas, tempo e custo estimado |
| RQ-3 | Qual componente contribui para o resultado? | ablação de RAG, ferramentas, prompt e orquestração |

## Tratamentos

| ID | Tratamento | Controle de equidade |
| --- | --- | --- |
| B-1 | regra/linter configurado | mesma base de código e regras públicas |
| B-2 | LLM com prompt simples | mesmo modelo, orçamento e tarefa |
| T-1 | agente com RAG e ferramentas permitidas | mesmo modelo e orçamento total |
| A-1 | T-1 sem RAG | isola recuperação |
| A-2 | T-1 sem ferramenta | isola uso de ferramenta |

## Dados e ground truth

Use PRs com critérios explícitos de inclusão, janela temporal e licença. Ground truth pode vir de defeitos confirmados, testes que falham antes da correção, revisão dupla humana ou conjunto curado; documente incerteza de rotulagem. Evite usar dados futuros no contexto recuperado.

## Ameaças principais

- Contaminação do benchmark pelo treinamento do modelo.
- Vazamento entre PR, commits posteriores e corpus RAG.
- Baselines com orçamento ou acesso a contexto desigual.
- Ground truth incompleto: ausência de comentário não equivale a ausência de defeito.
- Resultado dependente de versão de modelo, API ou ferramenta.

## Artefatos esperados

- `contribution-contract.md` com C-01, RQs e limites.
- `benchmark-card.md` e `dataset-card.md`.
- Configurações versionadas para cada tratamento.
- Scripts para execução, análise, tabela e figura.
- `claims-ledger.md` ligando C-01 a resultados e limitações.

## Conclusão responsável

Uma conclusão aceitável restringe-se ao conjunto avaliado, à versão do agente, às métricas e ao orçamento estudado. Não extrapole para “melhora revisão de código” em geral sem evidência externa adicional.
