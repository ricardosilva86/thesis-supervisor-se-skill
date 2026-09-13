# Thesis Supervisor for Software Engineering

Uma skill de coorientação técnica e metodológica, sob demanda, para TCCs, dissertações e teses em Ciência da Computação e Engenharia de Software.

## Objetivo

A skill ajuda a transformar uma ideia em uma pesquisa auditável: problema, lacuna, contribuição, perguntas de pesquisa, desenho metodológico, avaliação, artefato reprodutível e comunicação científica. Ela prioriza validade da inferência, rastreabilidade de evidências, integridade acadêmica e autonomia da pessoa pesquisadora.

Ela não substitui orientador humano, programa de pós-graduação, colegiado, CEP/CONEP, parceiro institucional ou banca. Documentos públicos da CAPES são usados apenas como referência de qualidade para a Área 02 — Computação; requisitos locais sempre prevalecem.

## O que ela faz

- Diagnostica tema, problema, escopo, riscos e viabilidade sem pular direto para redação.
- Exige claims testáveis, com escopo, baseline, evidência e limitações explícitas.
- Roteia para protocolos adequados: experimento, LLM/agentes, MSR, estudo de caso, Design Science, SLR/MLR, sistemas/cloud, segurança e pesquisa profissional.
- Mantém rastreabilidade entre claim, RQ, dados, configuração, script, tabela/figura e limitação.
- Ajuda a preparar artefatos reprodutíveis, auditorias, revisão de capítulos e defesa.
- Escala decisões que exigem autoridade humana, institucional, ética, jurídica ou de segurança.

## Limites importantes

- Não fabrica fontes, DOI, citações, dados, resultados, execuções, métricas, aprovações ou decisões humanas.
- Não assume agenda, frequência de reunião, disponibilidade de orientador ou SLA.
- Não certifica conformidade CAPES ou institucional.
- Não substitui aprovação ética, revisão de segurança, autorização de dados, licença, parecer jurídico ou orientação humana.
- Para dados pessoais, sigilo, IP, parceiros, sistemas de terceiros ou vulnerabilidades, aplique a política de dados/ética e prepare um `escalation-brief.md`.

## Instalação rápida

O repositório usa o formato interoperável `SKILL.md`. A forma mais portátil é clonar ou criar um symlink para o diretório de skills do agente que você usa.

```bash
git clone https://github.com/ricardosilva86/thesis-supervisor-se-skill.git
cd thesis-supervisor-se-skill
```

Para uma instalação guiada, em macOS/Linux:

```bash
./install/install.sh --agent claude-code --scope global
```

Execute `./install/install.sh --help` para ver agentes e opções disponíveis.

### Claude Code

Instalação global:

```bash
git clone https://github.com/ricardosilva86/thesis-supervisor-se-skill.git \
  ~/.claude/skills/thesis-supervisor-se
```

Instalação apenas no repositório atual:

```bash
git clone https://github.com/ricardosilva86/thesis-supervisor-se-skill.git \
  .claude/skills/thesis-supervisor-se
```

Reinicie o Claude Code após instalar. Quando o agente não descobrir a skill automaticamente, peça explicitamente: `Use the thesis-supervisor-se skill and read SKILL.md before responding.`

### Codex CLI

Instalação global convencional:

```bash
git clone https://github.com/ricardosilva86/thesis-supervisor-se-skill.git \
  "${CODEX_HOME:-$HOME/.codex}/skills/thesis-supervisor-se"
```

Em uma sessão do Codex com instalador de skills disponível, também pode ser possível instalar pelo repositório GitHub. Como a sintaxe pode variar por versão, confirme com `$skill-installer --help` e fixe uma tag quando houver release.

### Pi

Instalação global convencional:

```bash
git clone https://github.com/ricardosilva86/thesis-supervisor-se-skill.git \
  ~/.pi/agent/skills/thesis-supervisor-se
```

Instalação por projeto:

```bash
git clone https://github.com/ricardosilva86/thesis-supervisor-se-skill.git \
  .pi/skills/thesis-supervisor-se
```

### AGY CLI e outros agentes

Ferramentas variam na descoberta de skills. Use uma destas estratégias:

1. Configure o diretório que contém `SKILL.md` como skill/instrução do agente, se a ferramenta oferecer suporte nativo.
2. Copie ou faça symlink do repositório para o diretório de skills documentado pela ferramenta.
3. Como fallback, adicione `SKILL.md` como instrução de projeto e mantenha os diretórios `policy/`, `protocols/`, `templates/`, `rubrics/` e `commands/` acessíveis ao agente.

O comando de instalação aceita um destino genérico:

```bash
./install/install.sh --agent generic --scope project --target .agent/skills
```

### Symlink em vez de clone

Para desenvolver a skill e usá-la em vários agentes sem duplicar cópias:

```bash
git clone https://github.com/ricardosilva86/thesis-supervisor-se-skill.git \
  ~/src/thesis-supervisor-se-skill

ln -s ~/src/thesis-supervisor-se-skill \
  ~/.claude/skills/thesis-supervisor-se
```

Repita o `ln -s` para o diretório de cada agente. Atualize uma vez com `git -C ~/src/thesis-supervisor-se-skill pull --ff-only`.

## Uso

Comece com o diagnóstico de `SKILL.md`. Para uma pesquisa nova, crie uma pasta separada — por exemplo `research/` — no repositório da tese ou projeto:

```text
research/
  thesis-charter.md
  contribution-contract.md
  research-protocol.md
  experiment-plan.md
  dataset-card.md
  benchmark-card.md
  claims-ledger.md
  decision-log.md
  risk-register.md
  artifact-manifest.md
```

Copie apenas os templates que fizerem sentido para o método. Os arquivos são memória persistente da pesquisa: não os trate como burocracia separada da dissertação.

## Comandos operacionais

| Comando | Quando usar | Resultado principal |
| --- | --- | --- |
| `/thesis-init` | Tema, ideia ou projeto inicial | Charter, contribuição candidata, riscos e próximo gate |
| `/thesis-rq` | Transformar problema em RQ | RQ testável, escopo e evidência necessária |
| `/thesis-method` | Desenhar método antes de executar | Protocolo, seleção, métricas, validade e reprodução |
| `/thesis-experiment` | Planejar ou auditar avaliação | Controles de execução, rastreabilidade e status de claims |
| `/thesis-audit` | Revisar coerência transversal | Lacunas claim → evidência e ações priorizadas |
| `/thesis-review` | Revisar capítulo ou seção | Diagnóstico científico antes de edição de estilo |
| `/thesis-defense` | Preparar arguição/defesa | Perguntas prováveis, evidências e ajustes finais |

Nem todo agente registra automaticamente comandos com `/`. Se isso não ocorrer, use o equivalente em linguagem natural:

```text
Use commands/thesis-method.md para desenhar o método desta pesquisa.
Leia SKILL.md, o protocolo aplicável e as rubricas antes de responder.
```

### Fluxo sugerido

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

### Exemplo: agente de revisão de código

```text
/thesis-init
Quero avaliar se um agente LLM com RAG ajuda a encontrar defeitos em pull requests TypeScript.
Tenho acesso a repositórios públicos, orçamento limitado de API e quatro meses.
```

Uma boa resposta não deve afirmar que o agente “melhora revisões”. Ela deve delimitar população e janela temporal, perguntar como será definido ground truth, exigir baselines e orçamento comparável, registrar risco de contaminação do benchmark e propor um contrato de contribuição antes de escrever uma introdução.

Veja `examples/llm-code-review/` e `examples/static-analysis-security/` para desenhos ilustrativos.

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
- `rubrics/`: critérios para auditar RQ, contribuição, validade, artefato, resultados e defesa.
- `commands/`: instruções operacionais para cada fase da pesquisa.
- `examples/`: desenhos ilustrativos em Engenharia de Software.

## Atualização e desinstalação

Se instalou por clone:

```bash
git -C ~/.claude/skills/thesis-supervisor-se pull --ff-only
```

Se instalou usando o script:

```bash
./install/install.sh --agent claude-code --scope global --update
./install/uninstall.sh --agent claude-code --scope global
```

Para atualizar com segurança em uma tese em andamento, prefira fixar uma tag/release e registrar no `artifact-manifest.md` a versão da skill usada no projeto.

## Desenvolvimento e validação

```bash
./install/validate.sh
```

O validador verifica a presença de `SKILL.md`, frontmatter mínimo, diretórios obrigatórios, referências relativas e espaços finais em arquivos Markdown. Ele não avalia a qualidade científica de uma pesquisa.

## Releases

Antes de distribuir amplamente, crie uma tag para manter instalações reprodutíveis:

```bash
git tag -a v0.1.0 -m "Initial public release"
git push origin v0.1.0
```

Depois, usuários podem clonar uma versão específica:

```bash
git clone --branch v0.1.0 --depth 1 \
  https://github.com/ricardosilva86/thesis-supervisor-se-skill.git \
  ~/.claude/skills/thesis-supervisor-se
```

## Licença

MIT.
