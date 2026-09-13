# Exemplo: Ferramenta de Análise Estática de Segurança

Este exemplo ilustra uma pesquisa que propõe ou adapta análise estática para identificar uma classe de vulnerabilidade. Não autoriza testes ofensivos em sistemas de terceiros.

## Problema

Ferramentas de análise estática podem produzir alertas demais, perder vulnerabilidades relevantes ou ter custo que impede uso em CI. A contribuição precisa especificar classe de vulnerabilidade, linguagem, contexto e trade-offs.

## Claim candidato

> Para projetos web selecionados e uma taxonomia definida de vulnerabilidades, a técnica proposta melhora o recall em comparação com o baseline B, mantendo a precisão e a latência dentro dos limites especificados, sob as limitações do benchmark e do processo de rotulagem.

## Modelo de ameaça

- Ativos: código-fonte, pipeline CI, dependências e dados de teste.
- Adversário: capacidade, objetivo e fora de escopo definidos no protocolo.
- Superfícies: entradas, fluxos de dados, configurações e dependências relevantes.
- Limite: avaliação em repositórios e ambientes autorizados; nenhum scanning intrusivo ou exploração fora de escopo.

## Perguntas de pesquisa

| ID | Pergunta | Evidência esperada |
| --- | --- | --- |
| RQ-1 | A técnica encontra mais casos verdadeiros? | recall, cobertura e análise de FN |
| RQ-2 | Qual ruído ela introduz? | precisão, taxa de FP e categorias de FP |
| RQ-3 | É viável no pipeline? | latência p50/p95, consumo e taxa de falha |

## Benchmark e rotulagem

Documente origem, licença, versões, critérios de seleção, taxonomia, ground truth, revisão de rótulos e casos excluídos. Não use apenas exemplos construídos pela própria técnica; inclua casos negativos e alternativas plausíveis.

## Comparação

Execute proposta e baselines com mesmas versões de linguagem, dependências, timeout, hardware, projetos e política de falhas. Registre se um baseline exige regras adicionais ou configuração especializada.

## Ameaças principais

- Ground truth incompleto e classificação ambígua.
- Benchmark não representativo de projetos reais.
- Viés de seleção em casos criados pela própria proposta.
- Métrica agregada escondendo falha em categorias críticas.
- Exposição indevida de detalhes de vulnerabilidades ainda não divulgadas.

## Conclusão responsável

Restrinja o resultado às classes de vulnerabilidade, linguagens, projetos e condições avaliadas. Uma melhoria de recall pode ter custo em precisão ou latência; o trade-off deve aparecer na conclusão.
