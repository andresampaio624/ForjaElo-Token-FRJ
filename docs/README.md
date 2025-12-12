# ForjaElo Token (FRJ) Documentação

Este diretório centraliza as informações essenciais sobre o token **ForjaElo (FRJ)**, facilitando a navegação e referência rápida.

## 📊 Detalhes do Token

| Atributo | Valor |
|----------|-------|
| **Nome** | ForjaElo |
| **Símbolo** | FRJ |
| **Blockchain** | Polygon PoS (ERC-20) |
| **Total Supply** | 777.000.000 FRJ |
| **Decimais** | 18 |
| **Contract Address** | [`0x1353e990557c05e9336f83053e0b32263d1bba6C`](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C) |
| **Padrão** | ERC-20 (OpenZeppelin) |

> Status: contrato implantado na Polygon PoS. Verifique em [PolygonScan](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C).

### Compilação e verificação
- **Versão do compilador:** Solidity `v0.8.30+commit.73712a01` (mesma de `metadata.json`).
- **Fonte aberta:** [`contracts/ForjaElo.sol`](../contracts/ForjaElo.sol) (pragma ^0.8.30) com dependências em `@openzeppelin/`.
- **Artefato padrão do PolygonScan:** `polygon-verify/ForjaElo-polygonscan-standard-input.json` gerado via `python scripts/generate_polygonscan_input.py`.

## 🔥 Sobre o ForjaElo Token

O **ForjaElo (FRJ)** é o ativo digital nativo do Framework dos 7 Elos, fornecendo:

- **Incentivo** para contribuidores e praticantes dos 7 Elos.
- **Governança** com poder de voto em decisões da comunidade.
- **Utilidade** para acesso a recursos premium e ferramentas.
- **Integração comunitária** como moeda do ecossistema ForjaElo.

## 🔐 Segurança e Auditoria

- Contrato baseado em OpenZeppelin (battle-tested).
- Supply fixo de 777.000.000 FRJ, sem função adicional de mint.
- Tesouraria protegida por Gnosis Safe (multi-sig).
- Transparência: código 100% open-source.

**Arquivos de referência local**:
- [Relatório de Auditoria (PDF-ready)](./AUDIT_REPORT.md) — versão organizada para envio a plataformas e listagens.
- [Security Policy](./SECURITY_POLICY.md) — contato e diretrizes para reporte de vulnerabilidades.
- [Dossiê de verificação para corretoras](./EXCHANGE_VERIFICATION.md) — pacote objetivo para due diligence (ex.: Binance).

> Status da auditoria: aprovado para produção (0 vulnerabilidades críticas).

## 📚 Referências e Links

- **Repositório principal**: [ForjaElo-Token-FRJ](https://github.com/andresampaio624/ForjaElo-Token-FRJ)
- **Tokenomics**: [Detalhes do token](../README.md#-detalhes-do-token)
- **Contrato fonte**: [ForjaElo.sol](../contracts/ForjaElo.sol)
- **Documentação técnica**: [docs](./)
- **Guia de segurança**: [SECURITY_POLICY](./SECURITY_POLICY.md)
- **Deployment**: [Guia de contrato](../README.md#-como-trabalhar-com-o-contrato)
- **PolygonScan**: [Ver contrato](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C)
- **QuickSwap**: [Swap FRJ](https://quickswap.exchange)
- **Framework**: [ForjaElo-Framework](https://github.com/andresampaio624/ForjaElo-Framework)
- **Dossiê do framework:** [Gist oficial (distribuição controlada)](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1)

## 🗂️ Estrutura sugerida

- `docs/`: documentação e referências rápidas (este arquivo).
- `assets/`: logos e mídias do projeto.
- `LICENSE`: licença MIT.

Manter estes arquivos organizados ajuda a localizar rapidamente informações chave sobre o token e sua governança.
