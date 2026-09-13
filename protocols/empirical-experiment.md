# Protocolo: Experimento Empírico em Engenharia de Software

Use este protocolo para comparar ferramentas, técnicas, prompts, arquiteturas, algoritmos, processos ou intervenções.

## Antes de executar

Defina:

- RQ e, quando adequado, hipótese nula e alternativa;
- unidade experimental: tarefa, pull request, projeto, execução, participante ou outro;
- população-alvo, critérios de inclusão/exclusão e forma de amostragem;
- tratamento proposto e baselines justos;
- variáveis independentes, dependentes e confundidores;
- métricas com definição operacional, direção desejada e justificativa;
- ambiente, versões, configurações, seeds, warm-up e repetições;
- plano de análise, incerteza, tamanho de efeito e política de falhas;
- ameaças à validade de constructo, interna, externa e de conclusão.

## Baselines

Exija pelo menos um baseline mínimo plausível. Se houver baseline de estado da arte viável, registre por que ele foi incluído ou excluído. Uma comparação é injusta se tratamentos tiverem orçamento, contexto, dados, acesso a ferramentas ou tempo substancialmente diferentes sem justificativa.

## Execução

- Versione código, configurações e dados.
- Registre comandos, hardware, software e hashes.
- Execute repetições suficientes para observar variância quando houver aleatoriedade.
- Defina antes como tratar timeout, falha, dado ausente e saída inválida.
- Gere tabelas e figuras por scripts, não por edição manual.

## Análise

Relate números absolutos e relativos quando relevantes. Não use apenas média quando distribuição, caudas ou outliers importarem. Diferencie significância estatística, tamanho de efeito, relevância prática e custo operacional. Faça análise de erros ou de subgrupos quando a média esconder falhas importantes.

## Saída mínima

Atualize `research-protocol.md`, `experiment-plan.md`, `claims-ledger.md`, `risk-register.md` e `artifact-manifest.md`. Para cada RQ, indique explicitamente tabela/figura, script, dados e limitação correspondente.
