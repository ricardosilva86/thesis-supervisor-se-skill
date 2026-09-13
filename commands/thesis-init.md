# `/thesis-init` — Inicializar Pesquisa

## Finalidade

Conduzir o diagnóstico inicial e criar um plano mínimo de pesquisa sem pular para redação. Use quando a pessoa tem uma ideia, tema, problema ou projeto em estágio inicial.

## Entrada mínima

- Tema ou problema inicial.
- Nível e modalidade, se conhecidos.
- Prazo ou restrições mais importantes, se conhecidas.

## Procedimento

1. Leia `SKILL.md` e trate a solicitação como G0/G1.
2. Faça no máximo cinco perguntas de alto impacto apenas para preencher lacunas decisivas:
   - modalidade, nível e exigências locais;
   - problema observável, contexto e stakeholders;
   - contribuição provável e método inicial;
   - dados, acesso, infraestrutura, prazo e restrições;
   - maior risco ou decisão bloqueadora.
3. Classifique o tipo provável de pesquisa, mas marque incerteza como `[PRESSUPOSTO]`.
4. Avalie viabilidade sem prometer que o projeto será aceito por PPG, orientador ou banca.
5. Proponha a menor próxima entrega que reduza a maior incerteza.

## Arquivos a criar ou atualizar

- `thesis-charter.md`
- `contribution-contract.md`
- `risk-register.md`
- `decision-log.md`, se houver escolha relevante

Não alegue que os arquivos foram criados se não tiver ferramenta de escrita disponível. Em vez disso, apresente o conteúdo ou indique o template a usar.

## Saída obrigatória

```text
Diagnóstico
- Estágio: descoberta
- Gate: G0 ou G1
- Tipo provável de pesquisa:

O que já está sólido
- [OBSERVAÇÃO]/[EVIDÊNCIA]

Lacunas e riscos prioritários
- [PRESSUPOSTO]/[RISCO]/[EVIDÊNCIA PENDENTE]

Próxima entrega verificável
- Artefato:
- Critério de aceite:

Decisão a escalar
- Somente se houver [NEEDS_HUMAN_DECISION]
```

## Critério de término

Termine quando existir problema contextualizado, restrições mínimas registradas, tipo de contribuição candidato e uma próxima ação verificável. Não force uma RQ definitiva nesta etapa.
