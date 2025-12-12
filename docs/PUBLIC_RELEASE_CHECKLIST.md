# Checklist de Prontidão para Disponibilização Pública

Use este checklist para garantir que o repositório do **ForjaElo Token (FRJ)** permanece pronto para auditoria pública, listagens em corretoras e clonagem por terceiros.

## Itens obrigatórios
- **Licenciamento claro:** arquivo [`LICENSE`](../LICENSE) presente e apontado na documentação.
- **Contrato fonte atualizado:** [`contracts/ForjaElo.sol`](../contracts/ForjaElo.sol) com pragma `^0.8.30` e dependências em `@openzeppelin/` (vendorizadas na raiz).
- **Metadados públicos:** `metadata.json` na raiz para compatibilidade com Sourcify.
- **Artefato de verificação:** `polygon-verify/ForjaElo-polygonscan-standard-input.json` gerado pelo script `python scripts/generate_polygonscan_input.py`.
- **Documentação centralizada:** `README.md` e `docs/README.md` apontando para contatos, políticas de segurança e links on-chain.
- **Transparência de segurança:** `docs/AUDIT_REPORT.md` (auditoria) e `docs/SECURITY_POLICY.md` (divulgação responsável) atualizados.

## Boa práticas recomendadas
- **Histórico imutável:** evitar commits forçados na branch principal após publicações.
- **Tagueamento:** criar tags versionadas (`vX.Y.Z`) para releases públicos contendo o artefato de verificação correspondente.
- **Integridade do artefato:** após gerar o JSON padrão do PolygonScan, confirmar hash ou anexar ao release.
- **Links verificados:** validar periodicamente URLs externas (PolygonScan, Gist do framework e contatos).
- **Checklist para exchanges:** manter `docs/EXCHANGE_VERIFICATION.md` alinhado com os valores atuais do contrato e canais de contato.

## Fluxo rápido de validação
1. `python scripts/generate_polygonscan_input.py` para regenerar o JSON de verificação.
2. Confirmar a versão do compilador na saída (`v0.8.30+commit.73712a01`).
3. Conferir que o endereço `0x1353e990557c05e9336f83053e0b32263d1bba6C` aparece tanto em `metadata.json` quanto no README.
4. Revisar `docs/AUDIT_REPORT.md` e `docs/SECURITY_POLICY.md` para garantir que datas, contatos e escopo de auditoria estão atualizados.
5. Publicar um release/tag contendo o artefato de verificação e referenciá-lo no README.

> Manter este checklist em conformidade garante que o repositório continue pronto para consumo público e facilita auditorias independentes.
