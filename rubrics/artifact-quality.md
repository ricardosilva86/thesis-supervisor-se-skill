# Rubrica: Qualidade do Artefato

Avalie o artefato em disponibilidade, documentação, execução, verificação, reutilização e relação com claims. Use 0 = ausente, 1 = parcial, 2 = suficiente.

| Dimensão | 0 | 1 | 2 | Evidência |
| --- | --- | --- | --- | --- |
| Disponibilidade | artefato inacessível | acesso parcial ou temporário | repositório/pacote identificável e licença definida | |
| Proveniência | versão desconhecida | commit ou release incompleto | commit/tag, dados e configurações rastreáveis | |
| Instalação | passos implícitos | instalação manual documentada | ambiente reproduzível e smoke test | |
| Execução | comandos ausentes | execução parcial | comandos por experimento e outputs esperados | |
| Dados | origem indefinida | fonte documentada sem versão | versão, checksum, licença e restrições registradas | |
| Resultados | números manuais | alguns scripts disponíveis | tabela/figura ligadas a script, input e configuração | |
| Robustez | falhas ignoradas | política parcial | timeout, erro, aleatoriedade e limitações documentados | |
| Reutilização | propósito opaco | documentação básica | interfaces, limitações e requisitos claros | |
| Segurança/ética | riscos ignorados | riscos listados | segredos removidos, acesso e divulgação tratados | |

## Níveis de verificação

- **Autor**: o autor executou e documentou o fluxo.
- **Ambiente limpo**: o fluxo foi verificado em container, VM, devcontainer, Nix ou máquina independente.
- **Terceiro**: outra pessoa reproduziu parte ou todo o fluxo.

Não declare um nível superior ao que foi efetivamente realizado.
