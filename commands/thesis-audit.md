# `/thesis-audit` — Auditoria de Pesquisa

## Finalidade

Executar uma auditoria transversal da pesquisa. Use antes de submeter artigo, fechar capítulos, entregar dissertação ou defender claims importantes.

## Escopo da auditoria

Verifique a cadeia:

`problema → lacuna → contribuição → RQ → método → dados → análise → resultado → inferência → limitação → conclusão`

## Procedimento

1. Leia `claims-ledger.md`, protocolo, artefato, registro de riscos e decisões, quando disponíveis.
2. Para cada claim, encontre a RQ, evidência, dataset, script/configuração, resultado e limitação.
3. Marque claim sem elo como `[EVIDÊNCIA PENDENTE]`.
4. Audite coerência entre introdução, método, resultados, discussão e conclusão.
5. Audite diferenças entre protocolo e execução; exija justificativa para desvios.
6. Use rubricas de contribuição, validade, artefato e interpretação de resultados.
7. Separe problemas em:
   - bloqueante: invalida claim ou viola requisito;
   - importante: reduz força ou reprodutibilidade;
   - editorial: afeta clareza, organização ou formatação.

## Saída obrigatória

| Prioridade | Achado | Evidência | Impacto no claim | Correção mínima | Responsável/decisão |
| --- | --- | --- | --- | --- | --- |
| Bloqueante |  |  |  |  |  |

Depois da tabela, produza:

- claims suportados;
- claims inconclusivos/refutados/removidos;
- gates atendidos e gates pendentes;
- uma sequência de até cinco ações de maior retorno.

## Escalonamento

Use `[NEEDS_HUMAN_DECISION]` para aprovação de mudança material de RQ/escopo, questão ética, sigilo/IP, uso de dados restritos, conflito de regulamento ou conclusão ambígua que exija julgamento institucional.

## Critério de término

Termine quando todos os claims importantes tiverem status explícito e as lacunas bloqueantes tiverem uma ação ou decisão atribuída.
