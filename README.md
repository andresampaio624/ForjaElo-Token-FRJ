# 🔥 ForjaElo Token (FRJ) + NFT Collection

> **Repositório Oficial do Token de Criptomoeda FRJ + Coleção de NFTs dos 7 Elos**

<div align="center">
  <p align="center">
    <img src="./assets/logo.svg" alt="ForjaElo Logo" width="200" />
    <br />
    <strong>Token de Utilidade e Governança do Framework dos 7 Elos</strong>
  </p>
  <p>
    <a href="https://ethereum.org"><img src="https://img.shields.io/badge/Ethereum-ERC--20%20Token-3C3C3D?logo=ethereum&style=for-the-badge" alt="Token ERC-20"/></a>
    <a href="https://ethereum.org"><img src="https://img.shields.io/badge/Ethereum-ERC--1155%20NFT-purple?logo=ethereum&style=for-the-badge" alt="NFT ERC-1155"/></a>
    <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge" alt="License: MIT" /></a>
    <a href="https://soliditylang.org/"><img src="https://img.shields.io/badge/Solidity-0.8.30-blue?style=for-the-badge" alt="Solidity" /></a>
  </p>
</div>

---

## 📌 O QUE CONTÉM ESTE REPOSITÓRIO?

### 🪙 **Token ERC-20 (FRJ)**
- **Nome:** ForjaElo
- **Símbolo:** FRJ
- **Supply Total:** 777.000.000 FRJ (fixo)
- **Funcionalidade:** Utilidade e Governança
- **Contrato:** `contracts/ForjaElo.sol`
- **Status:** ✅ Deployado em Polygon PoS

### 🎨 **Coleção de NFTs ERC-1155 (FRJNFT)**
- **Nome:** ForjaElo Collection
- **Símbolo:** FRJNFT
- **Tipos:** 7 NFTs (um para cada Elo)
- **Supply por Elo:** 777 unidades
- **Contrato:** `contracts/ForjaEloNFT.sol`
- **Metadados:** 7 arquivos JSON em `/nft-metadata/`
- **Status:** ✅ Documentado e pronto para deploy

### 🔗 **Integração Completa**
- Token FRJ + NFTs sincronizados
- Simbologia unificada (777)
- Utilidades planejadas (Staking, Governance)
- Framework dos 7 Elos implementado

---

<div align="center">

## 🔥 ForjaElo — Framework dos 7 Elos

**Um framework de transformação pessoal estruturado em 7 dimensões interdependentes.**

[![Framework](https://img.shields.io/badge/Framework-7%20Elos-orange?style=for-the-badge)](documentacao/7-ELOS.md)
[![Token FRJ](https://img.shields.io/badge/Token%20FRJ-ERC--20-3C3C3D?style=for-the-badge)](./contracts/ForjaElo.sol)
[![NFT Collection](https://img.shields.io/badge/NFT%20Collection-ERC--1155-purple?style=for-the-badge)](./NFT-INTEGRATION.md)
[![Licença](https://img.shields.io/badge/Licença-MIT-yellow?style=for-the-badge)](LICENCA.md)
[![Status](https://img.shields.io/badge/Status-v0.1.0-green?style=for-the-badge)](#)

</div>

**Repositório público que reúne todo o código-fonte do Token FRJ (ERC-20) e da Coleção NFT dos 7 Elos (ERC-1155)**, com documentação completa para auditorias comunitárias, validações em corretoras e implementação.

---

## 🗺️ Navegação Rápida

### 📚 Documentação Principal
- 📖 [Documentação rápida](./docs/README.md)
- 🪙 [Contrato Token FRJ](./contracts/ForjaElo.sol)
- 🎨 [Contrato NFT Collection](./contracts/ForjaEloNFT.sol)
- 📊 [Estrutura dos NFTs dos 7 Elos](./docs/NFT-STRUCTURE.md)
- 🧸 [Guia de Integração NFT](./NFT-INTEGRATION.md)

### 🔍 Verificação e Exploração
- 🔳 [Token FRJ no PolygonScan](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C)
- 📋 [Checklist de prontidão pública](./docs/PUBLIC_RELEASE_CHECKLIST.md)
- 🌐 [Framework dos 7 Elos Completo](https://github.com/andresampaio624/ForjaElo-Framework)
- ✅ [Dossiê de veracidade do framework](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1)

### 🎨 Recursos
- 🖌️ [Ativos Oficiais](./assets)
- 💡 [Guia do Contrato e Build](#como-trabalhar-com-os-contratos)
- 🚀 [Script de Deploy NFT](./scripts/deployNFT.js)

---

## 🎁 Coleção NFT - 7 Elos

Alinhada com o framework, temos uma coleção de **7 NFTs ERC-1155** representando cada Elo:

| Elo | Símbolo | ID | Sentido | Expressão | Meta | Ação |
|-----|---------|----|---------|----|------|-------|
| **CHAMA** | 🔥 | 1 | Amor | Espírito/Propósito | Prioridade | Adoração/Honra |
| **REFÚGIO** | 🏞️ | 2 | Alma | Justiça | Liderança | Desintoxicação |
| **POTÊNCIA** | ⚡ | 3 | Força | Processo | Hábito | Automatizar |
| **CENTRAL** | 🎯 | 4 | Verdade | Autenticidade | Sistema | Vulnerabilidade |
| **TALENTO** | 🎨 | 5 | Valor | Domínio | Espaço | Mordomia |
| **ATLETA** | 🏃 | 6 | Corpo | Biologia | Forma | Testar |
| **IDÉ** | 💡 | 7 | Servir | Química | Conexão | Encorajar |

### ✨ Características dos NFTs
- **Padrão:** ERC-1155 Multi-Token
- **Supply por Elo:** 777 unidades (alinhado com simbolismo 777)
- **Metadados:** Compatível com OpenSea e marketplaces
- **Hospedagem:** IPFS para descentralização
- **Riqueza de Dados:** Cada NFT carrega 10 atributos do framework

**Saiba mais:** [📊 Documentação Técnica de NFTs](./docs/NFT-STRUCTURE.md) | [🧸 Guia de Integração](./NFT-INTEGRATION.md)

---

## 📄 Detalhes Técnicos

### 🪙 Token ERC-20 (FRJ)
- **Nome:** ForjaElo
- **Símbolo:** FRJ
- **Decimais:** 18
- **Total Supply:** 777.000.000 FRJ (supply fixo, mintado no deploy)
- **Contrato:** [`0x1353e990557c05e9336f83053e0b32263d1bba6C`](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C)
- **Padrão:** ERC-20 com base no OpenZeppelin
- **Rede:** Polygon PoS
- **Arquivo:** `contracts/ForjaElo.sol`

### 🎨 Coleção NFT (FRJNFT)
- **Nome:** ForjaElo Collection
- **Símbolo:** FRJNFT
- **Padrão:** ERC-1155 (Multi-Token)
- **Total de Tipos:** 7 (um por Elo)
- **Supply Máximo por Tipo:** 777 NFTs
- **Arquivo Contrato:** `contracts/ForjaEloNFT.sol`
- **Metadados:** `nft-metadata/` (1.json a 7.json)
- **Status:** ✅ Documentado e pronto para deploy

---

## 📂 Estrutura do Projeto

```text
📦 ForjaElo-Token-FRJ/
├── 🪙 CONTRATO TOKEN
│   ├── contracts/
│   │   ├── ForjaElo.sol              # Token ERC-20 FRJ
│   │   └── ForjaEloNFT.sol          # NFT Collection ERC-1155
│   └── @openzeppelin/               # Dependências
│
├── 🎨 NFT METADATA
│   └── nft-metadata/
│       ├── 1.json (CHAMA)
│       ├── 2.json (REFÚGIO)
│       ├── 3.json (POTÊNCIA)
│       ├── 4.json (CENTRAL)
│       ├── 5.json (TALENTO)
│       ├── 6.json (ATLETA)
│       └── 7.json (IDÉ)
│
├── 📚 DOCUMENTAÇÃO
│   ├── docs/
│   │   ├── NFT-STRUCTURE.md         # Especificação técnica NFT
│   │   ├── README.md                # Docs rápidas
│   │   └── ...
│   ├── NFT-INTEGRATION.md           # Guia integração
│   └── README.md (este arquivo)
│
├── 🚀 SCRIPTS
│   └── scripts/
│       ├── deployNFT.js             # Deploy NFT automático
│       └── generate_polygonscan_input.py
│
└── 🔍 VERIFICAÇÃO
    ├── polygon-verify/              # Artefatos PolygonScan
    ├── metadata.json                # Metadados Sourcify
    └── LICENSE
```

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

### Deploy do Token ERC-20

```bash
# Já deployado em Polygon PoS
# Endereço: 0x1353e990557c05e9336f83053e0b32263d1bba6C
# Ver: https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C
```

### Deploy de NFT (Hardhat)

```bash
# Testnet (Sepolia)
npx hardhat run scripts/deployNFT.js --network sepolia

# Mainnet Ethereum
npx hardhat run scripts/deployNFT.js --network ethereum

# Polygon
npx hardhat run scripts/deployNFT.js --network polygon
```

### Verificação Pública

#### No PolygonScan (Token FRJ)
1. Ir para: https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C
2. Contrato já está verificado ✅

#### No Etherscan/Polygonscan (NFT Collection)
1. Após deploy, gere o "Standard-Input-Json":
   ```bash
   python scripts/generate_polygonscan_input.py
   ```
2. No explorer, escolha **Standard JSON-Input**
3. Use versão Solidity: `v0.8.30+commit.73712a01`

---

## 🖒 Segurança e Transparência

- ✅ Contratos baseados em OpenZeppelin (battle-tested)
- ✅ Supply fixo de 777.000.000 FRJ, sem função adicional de mint
- ✅ NFTs com supply limitado (777 por Elo) para raridade
- ✅ Tesouraria protegida por Gnosis Safe (multi-sig)
- ✅ Documentação pública para facilitar auditorias
- ✅ Licença MIT explícita

Consulte também:
- [Relatório de Auditoria](./docs/AUDIT_REPORT.md)
- [Security Policy](./docs/SECURITY_POLICY.md)
- [Contatos](./docs/CONTATO.md)

---

## 💬 Suporte e Contatos Oficiais

- **Suporte ao Cliente (Principal):** `suporte@forjaelo.com.br`
  - Canal preferencial para dúvidas, validações de listagem e reportes de segurança

- **Comunicação Institucional:** `andresampaio624@gmail.com`
  - Contato histórico mantido para continuidade

---

## 🔐 Conformidade e Veracidade

- ✅ Compilação alinhada: Solidity **v0.8.30+commit.73712a01**
- ✅ Todos os arquivos para verificação em corretoras inclusos
- ✅ Metadados de NFTs alinhados com tabela dos 7 Elos oficial
- ✅ Licenciamento MIT explícito
- ✅ Sem dependências proprietárias ocultas
- ✅ Dossiê do framework acessível via [gist oficial](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1)

---

## 🚀 Roadmap

### Fase 1: Fundação ✅
- [x] Token ERC-20 ForjaElo (FRJ) deployado
- [x] Coleção NFT ERC-1155 dos 7 Elos especificada
- [x] Metadados alinhados com framework
- [x] Documentação técnica completa

### Fase 2: Lançamento 🚀
- [ ] Deploy NFT Collection em mainnet
- [ ] Listagem no OpenSea
- [ ] Verificação em exchanges
- [ ] Airdrop comunitário de NFTs

### Fase 3: Utilidades 🔮
- [ ] Sistema de Staking (NFT + Token FRJ)
- [ ] Governance DAO
- [ ] Marketplace de Elos
- [ ] Integração DeFi

---

## Licença

Distribuído sob a [MIT License](./LICENSE). Consulte o arquivo para mais detalhes.

---

<div align="center">

**ForjaElo - Token FRJ + NFT Collection**

Transformação Pessoal através do Web3

[🌐 Framework Completo](https://github.com/andresampaio624/ForjaElo-Framework) • [🪙 Token FRJ](./contracts/ForjaElo.sol) • [🎨 NFT Collection](./contracts/ForjaEloNFT.sol)

</div>
