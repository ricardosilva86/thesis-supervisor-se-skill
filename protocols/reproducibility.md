# Protocolo: Reprodutibilidade e Artefatos

## Objetivo

Trate o artefato como uma entrega de pesquisa. O leitor deve conseguir entender quais versões, dados, configurações e comandos produziram cada resultado do manuscrito.

## Manifesto mínimo

Registre:

- repositório, commit/tag, licença e estrutura do projeto;
- sistema operacional, runtime, dependências travadas e configuração;
- CPU, RAM, GPU, drivers, armazenamento e requisitos de rede;
- origem, versão, checksum, licença e restrições de cada dataset;
- comandos de instalação, smoke test e execução por experimento;
- tempo aproximado, custo estimado e outputs esperados;
- política para falhas, aleatoriedade e resultados não determinísticos.

## Rastreabilidade

Cada tabela ou figura deve apontar para:

1. RQ e claim relacionados.
2. Dataset/input e versão.
3. Script e configuração.
4. Commit ou release.
5. Logs ou outputs intermediários permitidos.
6. Limitações de reprodução.

Evite copiar números manualmente para o manuscrito. Prefira pipeline que gere artefatos de publicação a partir de resultados versionados.

## Execução limpa

Sempre que viável, teste em ambiente novo — container, VM, devcontainer, Nix ou máquina independente. Registre pré-requisitos não automatizados e falhas observadas. Não declare reprodução por terceiros se só houve execução pelo próprio autor; descreva exatamente o nível de verificação realizado.
