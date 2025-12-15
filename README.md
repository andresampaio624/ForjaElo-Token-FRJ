# ForjaElo Token (FRJ)

<div align="center">
  <p align="center">
    <img src="./assets/logo.svg" alt="ForjaElo Logo" width="200" />
    <br />
    <strong>Token de Utilidade e Governança do Framework dos 7 Elos</strong>
  </p>
  <p>
    <a href="https://ethereum.org"><img src="https://img.shields.io/badge/Ethereum-ERC--20-3C3C3D?logo=ethereum" alt="Ethereum"/></a>
    <a href="https://ethereum.org"><img src="https://img.shields.io/badge/Ethereum-ERC--1155-purple?logo=ethereum" alt="NFT"/></a>
    <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" /></a>
    <a href="https://soliditylang.org/"><img src="https://img.shields.io/badge/Solidity-0.8.30-blue" alt="Solidity" /></a>
  </p>
</div>

<div align="center">

## 🔥 ForjaElo — Framework dos 7 Elos

**Um framework de transformação pessoal estruturado em 7 dimensões interdependentes.**

[![Framework](https://img.shields.io/badge/Framework-7%20Elos-orange?style=for-the-badge)](documentacao/7-ELOS.md)
[![NFT Collection](https://img.shields.io/badge/NFT-ERC--1155-purple?style=for-the-badge)](./NFT-INTEGRATION.md)
[![Licença](https://img.shields.io/badge/Licença-MIT-yellow?style=for-the-badge)](LICENCA.md)
[![Status](https://img.shields.io/badge/Status-v0.1.0-green?style=for-the-badge)](#)
[![Acesso para Corretores](https://img.shields.io/badge/DC-%20Documento%20de%20Distribui%C3%A7%C3%A3o%20Controlada-blue?style=for-the-badge)](#)

</div>

Repositório público que reúne **todo o código-fonte e materiais de divulgação do token ERC-20 ForjaElo (FRJ) e da Coleção NFT ERC-1155**, preparados para auditorias comunitárias, validações em corretoras e envio a parceiros.

- 📚 [Documentação rápida](./docs/README.md)
- 🧸 [NFT Integração](./NFT-INTEGRATION.md)
- 📊 [Estrutura dos NFTs dos 7 Elos](./docs/NFT-STRUCTURE.md)
- 🔳 [Contrato no PolygonScan](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C)
- 💡 [Guia do contrato e build](#como-trabalhar-com-o-contrato)
- 🞌 [Ativos oficiais](./assets)
- ✅ [Checklist de prontidão pública](./docs/PUBLIC_RELEASE_CHECKLIST.md)
- 🌐 [Framework dos 7 Elos](https://github.com/andresampaio624/ForjaElo-Framework)
- 🧨 [Dossê de veracidade do framework](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1)

---

## 🎁 NFT Collection - 7 Elos

Alinhada com o framework, temos uma coleção de **7 NFTs ERC-1155** representando cada Elo:

| Elo | Símbolo | ID | Sentido | Expressão | Meta | Ação |
|-----|---------|----|---------|----|------|-------|
| **CHAMA** | 🔥 | 1 | Amor | Espírito/Propósito | Prioridade | Adoração/Honra |
| **REFÚGIO** | 🌞 | 2 | Alma | Justiça | Liderança | Desintoxicação |
| **POTÊNCIA** | ⚡ | 3 | Força | Processo | Hábito | Automatizar |
| **CENTRAL** | 🎏 | 4 | Verdade | Autenticidade | Sistema | Vulnerabilidade |
| **TALENTO** | 🎎 | 5 | Valor | Domínio | Espaço | Mordomia |
| **ATLETA** | 🏋 | 6 | Corpo | Biologia | Forma | Testar |
| **IDÉ** | 💡 | 7 | Servir | Química | Conexão | Encorajar |

### Características dos NFTs
- **Padrão:** ERC-1155 Multi-Token
- **Supply por Elo:** 777 unidades (alinhado com symbolismo 777)
- **Metadados:** Compativel com OpenSea e marketplaces
- **Hospedagem:** IPFS para descentralização
- **Riqueza de dados:** Cada NFT carrega os 7 atributos do framework

**Saiba mais:** [📊 Documentação Completa de NFTs](./docs/NFT-STRUCTURE.md) | [🧸 Guia de Integração](./NFT-INTEGRATION.md)

---

## 📄 Detalhes do Token

### Token ERC-20 (FRJ)
- **Nome:** ForjaElo
- **Símbolo:** FRJ
- **Decimais:** 18
- **Total Supply:** 777.000.000 FRJ (supply fixo, mintado no deploy)
- **Contrato:** [`0x1353e990557c05e9336f83053e0b32263d1bba6C`](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C)
- **Padrão:** ERC-20 com base no OpenZeppelin
- **Rede:** Polygon PoS

### Coleção NFT (FRJNFT)
- **Nome:** ForjaElo Collection
- **Símbolo:** FRJNFT
- **Padrão:** ERC-1155
- **Total de Tipos:** 7 (um por Elo)
- **Supply Máximo por Tipo:** 777 NFTs
- **Arquivo:** `contracts/ForjaEloNFT.sol`

Para compilar ou verificar o contrato manualmente, utilize o guia abaixo e o passo a passo de geração do JSON em `polygon-verify/ForjaElo-polygonscan-standard-input.json`.

---

## 📂 Estrutura do Projeto

```text
contracts/                 # Código-fonte (ForjaElo.sol, ForjaEloNFT.sol)
@openzeppelin/             # Dependências OpenZeppelin
scripts/                   # Scripts de deploy e verificação
polygon-verify/            # Artefatos de verificação PolygonScan
nft-metadata/              # Metadados JSON dos 7 Elos NFTs
  └── 1.json a 7.json   # Cada Elo com seus atributos
assets/                    # Logos e mídias oficiais
docs/                      # Documentação rápida e links úteis
metadata.json              # Metadados Sourcify para verificação
NFT-INTEGRATION.md         # Guia de integração NFT
```

Manter essa hierarquia facilita localizar rapidamente o contrato, scripts de build e materiais oficiais do token.

---

## 🜟 Como Trabalhar com os Contratos

### Instalação

1. Instale um ambiente Solidity (por exemplo, Foundry ou Hardhat).
2. Garanta que o caminho `@openzeppelin/` seja reconhecido como dependência:
   - **Hardhat:** mantenha a pasta na raiz
   - **Foundry:** adicione `@openzeppelin/=./@openzeppelin/` em `remappings.txt`

### Compilação

```bash
# Foundry
forge build

# Hardhat
npm install
npx hardhat compile
```

### Deploy de NFT (Hardhat)

```bash
# Testnet (Sepolia)
npx hardhat run scripts/deployNFT.js --network sepolia

# Mainnet (com cuidado!)
npx hardhat run scripts/deployNFT.js --network ethereum
```

### Verificação Pública no PolygonScan

1. Confirme que o `metadata.json` está na raiz do projeto (já incluído).
2. Gere o arquivo "Standard-Input-Json":
   ```bash
   python scripts/generate_polygonscan_input.py
   ```
3. No PolygonScan, escolha **Standard JSON-Input** e use versão `v0.8.30+commit.73712a01`.

---

## 🖒 Segurança e Transparência

- Contratos baseados em OpenZeppelin (battle-tested).
- Supply fixo de 777.000.000 FRJ, sem função adicional de mint.
- NFTs com supply limitado (777 por Elo) para raridade.
- Tesouraria protegida por Gnosis Safe (multi-sig).
- Documentação pública para facilitar auditorias e listagens em corretoras.

Consulte também:
- [Relatório de auditoria](./docs/AUDIT_REPORT.md)
- [Security Policy](./docs/SECURITY_POLICY.md)
- [Contato](./docs/CONTATO.md)

## 💬 Suporte e Contatos Oficiais

- **Suporte ao cliente (principal):** `suporte@forjaelo.com.br` — canal preferencial para dúvidas de usuários finais, corretores e parceiros, incluindo validações de listagem e reportes de segurança.
- **Comunicação institucional:** `andresampaio624@gmail.com` — contato histórico mantido para continuidade.

## 🔐 Conformidade e Veracidade

- Compilação alinhada ao metadado público: Solidity **v0.8.30+commit.73712a01**
- Dossê do framework dos 7 Elos acessível apenas via [gist oficial](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1)
- Todos os arquivos necessários para verificação em corretoras: contrato fonte, metadados Sourcify, artefato padrão do PolygonScan
- Licenciamento MIT explícito e consistente (sem dependências proprietárias ocultas)
- Metadados de NFTs alinhados com a tabela dos 7 Elos oficial

---

## 🚀 Roadmap

### Fase 1: Fundação (✅)
- [x] Token ERC-20 ForjaElo
- [x] Coleção NFT ERC-1155 dos 7 Elos
- [x] Metadados alinhados com framework
- [x] Documentação completa

### Fase 2: Lançamento (🚀)
- [ ] Deploy em mainnet Ethereum/Polygon
- [ ] Listagem no OpenSea
- [ ] Verificação em exchanges
- [ ] Airdrop comunitário

### Fase 3: Utilidades (🔮)
- [ ] Sistema de Staking (NFT + Token)
- [ ] Governance DAO
- [ ] Marketplace de Elos
- [ ] Integração DeFi

---

## Licença

Distribuído sob a [MIT License](./LICENSE). Consulte o arquivo para mais detalhes.
