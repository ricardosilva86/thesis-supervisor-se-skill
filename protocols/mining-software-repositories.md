# Protocolo: Mining Software Repositories (MSR)

Use para pesquisas que analisam commits, pull requests, issues, releases, dependências, CVEs, repositórios ou métricas de ecossistemas.

## Planejamento

Defina a RQ, unidade de análise, plataforma/fonte, janela temporal, query ou mecanismo de coleta, critérios de inclusão/exclusão e estratégia para armazenar identificadores e versões.

## Coleta e transformação

- Preserve query, data/hora, paginação, API/CLI, versão de schema e scripts.
- Registre rate limits, dados ausentes, objetos removidos e falhas de coleta.
- Defina deduplicação para forks, mirrors, renomes, commits compartilhados e PRs espelhados.
- Evite usar informação posterior ao evento ao criar features ou rótulos.
- Documente transformações, heurísticas e decisões de classificação.

## Validade

Discuta viés de sobrevivência, viés de seleção, representatividade de linguagem/organização, bots, dados ausentes, mudanças de API, ambiguidade de rótulos e generalização além da amostra.

## Ética e licença

Dados publicamente acessíveis ainda podem conter identificadores pessoais, conteúdo sensível ou termos de plataforma. Aplique o módulo de dados/ética e minimize dados publicados.

## Saída mínima

Crie `dataset-card.md`, mantenha scripts reexecutáveis, registre a janela temporal e ligue cada resultado a uma query, versão de dados e análise.
