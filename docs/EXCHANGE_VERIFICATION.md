# Dossiê de Verificação para Listagem em Corretoras

Este documento resume, de forma objetiva e auditável, os elementos essenciais do **ForjaElo Token (FRJ)** para análise de conformidade por corretoras (incluindo Binance). Todas as referências são públicas e verificáveis.

## 1. Identificação do Ativo
- **Nome / Símbolo:** ForjaElo / FRJ
- **Padrão:** ERC-20 (OpenZeppelin)
- **Rede:** Polygon PoS
- **Contract Address:** `0x1353e990557c05e9336f83053e0b32263d1bba6C`
- **Decimais:** 18
- **Total Supply:** 777.000.000 FRJ (fixo, todo o supply mintado no deploy)

## 2. Contrato e Compilação
- **Fonte completa:** [`contracts/ForjaElo.sol`](../contracts/ForjaElo.sol)
- **Compilador:** Solidity `v0.8.30+commit.73712a01`
- **Dependências:** OpenZeppelin 4.x (bundled no repositório em `@openzeppelin/`)
- **Build reproduzível:**
  - Script para gerar o JSON padrão do PolygonScan: `python scripts/generate_polygonscan_input.py`
  - Artefato resultante: `polygon-verify/ForjaElo-polygonscan-standard-input.json`
- **Metadados Sourcify:** `metadata.json` presente na raiz para verificação pública.
- **Mirror do framework:** [Dossiê público no Gist](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1) para validação controlada.

## 3. Segurança e Auditoria
- **Auditoria interna:** [Relatório resumido](./AUDIT_REPORT.md) — 0 vulnerabilidades críticas.
- **Política de Segurança / Bug Bounty:** [SECURITY_POLICY.md](./SECURITY_POLICY.md) — canal dedicado para disclosure responsável.
- **Práticas de contrato:**
  - Sem funções de mint/burn adicionais além do supply inicial.
  - Uso exclusivo de bibliotecas OpenZeppelin.
  - Tesouraria operada por multi-sig (Gnosis Safe).

## 4. Distribuição e Controles
- **Supply fixo:** nenhuma emissão futura possível via contrato.
- **Endereços institucionais:** tesouraria e reservas documentadas internamente e passíveis de KYC sob NDA.
- **Liquidez:** pools oficiais priorizados em DEXs da Polygon; mudanças anunciadas com aviso prévio.

## 5. Conformidade e Transparência
- **Licença:** MIT (`LICENSE`).
- **Repositório público:** https://github.com/andresampaio624/ForjaElo-Token-FRJ (código base aberto).
- **Rastreamento on-chain:** https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C
- **Documentação rápida:** [`docs/README.md`](./README.md)
- **Conteúdo do framework (referência controlada):** [Gist oficial](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1)

## 6. Contatos para Validação
- **Validações e reportes técnicos:** suporte@forjaelo.com.br (PGP disponível sob solicitação)
- **Comunicação institucional e continuidade:** andresampaio624@gmail.com

> Este dossiê foi formatado para leitura rápida por times de due diligence, fornecendo referências concretas para validação automatizada e manual.
