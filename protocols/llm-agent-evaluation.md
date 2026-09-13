# Protocolo: Avaliação de LLMs e Agentes de Código

Use junto ao protocolo de experimento empírico ao avaliar LLMs, RAG, agentes, ferramentas de revisão de código, geração de testes, correção automática, prompts ou fine-tuning.

## Especificação do sistema

Registre exatamente:

- provedor, modelo, identificador/versão, data de acesso e política de atualização conhecida;
- prompt do sistema, prompt de tarefa, exemplos, ferramentas, permissões e limites;
- estratégia de RAG, corpus, chunking, recuperação, filtros e contexto fornecido;
- temperatura, top-p, limite de tokens, seed quando disponível, timeout, retries e orçamento;
- orquestração do agente: etapas, ferramentas, critérios de parada e intervenção humana;
- dependências externas e suas versões.

## Dados e contaminação

Documente proveniência, licença, janela temporal e critérios de seleção. Avalie risco de vazamento entre treino, validação e teste; risco de benchmark ter sido visto durante treinamento; duplicatas, forks e dependências entre projetos; e vazamento de informação do futuro para o passado.

Não alegue ausência de contaminação se ela não puder ser demonstrada. Declare o risco, as mitigação adotadas e a limitação residual.

## Comparações e ablações

Compare com baselines que reflitam alternativas reais: regra/linter, busca, modelo sem ferramentas, modelo sem RAG, prompt simples ou processo humano, conforme o problema. Faça ablação para separar o efeito de modelo, prompt, recuperação, ferramentas, memória e orquestração.

Controle orçamento de tokens, chamadas, tempo, acesso a contexto e ferramentas. Sem isso, alegações de superioridade podem refletir mais recursos, não melhor método.

## Métricas

Além de qualidade primária, considere cobertura, precisão, recall, taxa de falsos positivos, taxa de falsos negativos, completude, custo, latência, taxa de sucesso, taxa de intervenção humana e robustez. Defina um protocolo para ground truth e rotulagem.

## Relato

Analise erros por categoria. Preserve saídas e logs permitidos para auditoria, respeitando privacidade, licenças e sigilo. Diferencie resultado de benchmark, desempenho em contexto real e evidência de adoção.
