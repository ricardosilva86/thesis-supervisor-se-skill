# Dados, Ética, LGPD e Propriedade Intelectual

## Finalidade

Use este módulo antes de coletar, copiar, compartilhar, publicar ou processar dados que possam envolver pessoas, organizações, código não público, credenciais, sistemas de terceiros, confidencialidade, propriedade intelectual ou vulnerabilidades.

A skill não fornece parecer jurídico, autorização ética ou aprovação institucional. Requisitos do PPG, da instituição, do comitê de ética, do controlador dos dados, do parceiro e da legislação aplicável prevalecem.

## Triagem obrigatória

Verifique e registre:

- participantes humanos, entrevistas, questionários, observação ou experimentos com desenvolvedores;
- dados pessoais, dados sensíveis, identificadores indiretos, logs, telemetria ou conteúdo de comunicação;
- dados corporativos, repositórios privados, issues privadas, código proprietário ou documentação sob NDA;
- licenças de código, datasets, benchmarks e modelos;
- uso de serviços externos, APIs, contas, tokens ou sistemas de terceiros;
- material que exponha vulnerabilidades, exploits, credenciais, arquitetura sensível ou risco operacional;
- finalidade, minimização, retenção, acesso, anonimização e descarte dos dados.

## Regras de segurança

- Não colete ou publique dados além do necessário para a pergunta de pesquisa.
- Não inclua chaves, tokens, senhas, dados de clientes ou informações confidenciais no artefato.
- Não execute testes ofensivos, scans intrusivos ou exploração fora de escopo formalmente autorizado.
- Não publique detalhes exploráveis de vulnerabilidades sem seguir processo apropriado de divulgação responsável.
- Não assuma que dados públicos são livres de restrições éticas, legais, contratuais ou de licença.

## Escalonamento

Marque `[NEEDS_HUMAN_DECISION]` antes de prosseguir quando houver necessidade de consentimento, aprovação ética, DPA, revisão de segurança, autorização de organização, avaliação de licença, NDA, embargo, definição de anonimização ou decisão sobre divulgação. Prepare um `escalation-brief.md` com a decisão concreta, opções e riscos.

## Registro mínimo

Para cada fonte de dados, mantenha um `dataset-card.md` com origem, licença, acesso, período, seleção, dados pessoais, riscos, mitigação, retenção e limitações.
