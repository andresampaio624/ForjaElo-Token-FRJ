# 🔥 ForjaElo NFT - Guia de Integração

## Visão Geral da Integração NFT

Este documento descreve como os NFTs do ForjaElo estão integrados com o token FRJ (ERC-20) e o framework dos 7 Elos de transformação pessoal.

---

## 📊 Tabela dos 7 Elos - NFT Implementation

| Elo | Símbolo | Sentido | Expressão | Meta | Ação | Token ID | Status |
|-----|---------|---------|------------|------|------|----------|--------|
| **CHAMA** | 🔥 | Amor | Espírito/Propósito | Prioridade | Adoração/Honra | 1 | ✅ Deploy |
| **REFÚGIO** | 🌞 | Alma | Justiça | Liderança | Desintoxicação | 2 | ✅ Deploy |
| **POTÊNCIA** | ⚡ | Força | Processo | Hábito | Automatizar | 3 | ✅ Deploy |
| **CENTRAL** | 🎏 | Verdade | Autenticidade | Sistema | Vulnerabilidade | 4 | ✅ Deploy |
| **TALENTO** | 🎎 | Valor | Domínio | Espaço | Mordomia | 5 | ✅ Deploy |
| **ATLETA** | 🏋 | Corpo | Biologia | Forma | Testar | 6 | ✅ Deploy |
| **IDÉ** | 💡 | Servir | Química | Conexão | Encorajar | 7 | ✅ Deploy |

---

## 🤝 Relação Token FRJ ↔ NFT Elos

### Token FRJ (ERC-20)
- **Total Supply:** 777.000.000 FRJ
- **Decimals:** 18
- **Simbolismo:** 777 = representando os 7 Elos
- **Função:** Token de utilidade e governança

### NFT Elos (ERC-1155)
- **Padrão:** Multi-Token
- **Supply por Elo:** 777 unidades
- **Função:** Representação digital dos estágios de transformação

### Ecossistema Integrado

```
┌────────────────┐
│  Comunidade ForjaElo  │
└────────────────┘
        △
       /|\
      / | \
     /  |  \
    ┌──┬──┐
    │ 💰 │
    └──┴──┘
   Token FRJ
   • 777M supply
   • Governça
   • Utilidade
        ┌──┬──┐
        │🜟 │
        └──┴──┘
      NFT Elos
      • 7 tipos
      • 777 cada
      • Progress
```

---

## 🛵 Arquitetura de Arquivos

```
ForjaElo-Token-FRJ/
├── contracts/
│   ├── ForjaElo.sol          # Token ERC-20 FRJ
│   └── ForjaEloNFT.sol      # Elos NFT ERC-1155
nft/
├── README.md                      # Este arquivo
├── images/                        # Imagens PNG
│
├── metadata/                      # Metadados JSON
│   ├── README.md
│   ├── core/                       # Dados essenciais
│   │   ├── elos.json                # Mestre de todos os ELOs
│   │   ├── 1.json
│   │   ├── 2.json
│   │   ├── 3.json
│   │   ├── 4.json
│   │   ├── 5.json
│   │   ├── 6.json
│   │   └── 7.json
│   │
│   ├── ipfs/                       # Prontos para IPFS
│   │   ├── 1.json
│   │   ├── 2.json
│   │   ├── 3.json
│   │   ├── 4.json
│   │   ├── 5.json
│   │   ├── 6.json
│   │   └── 7.json
│   │
│   ├── elo-1-chama/
│   │   ├── index.json
│   │   ├── full-metadata.json
│   │   └── schema.json
│   │
│   ├── elo-2-refugio/
│   ├── elo-3-potencia/
│   ├── elo-4-central/
│   ├── elo-5-talento/
│   ├── elo-6-atleta/
│   └── elo-7-ide/
│
├── CORE-TERMS.md                  # Referência de termos
└── STATS.md                       # Estatísticas
├── docs/
│   └── NFT-STRUCTURE.md     # Documentação da NFT
├── scripts/
│   └── deployNFT.js        # Script de deploy
└── NFT-INTEGRATION.md   # Este arquivo
```

---

## 🚀 Como Fazer Deploy

### 1. Preparar Ambiente

```bash
# Instalar dependências
npm install

# Configurar variáveis de ambiente
cp .env.example .env
# Editar .env com suas chaves privadas e RPC URLs
```

### 2. Deploy do Contrato

```bash
# Em rede de teste (Sepolia)
npx hardhat run scripts/deployNFT.js --network sepolia

# Em mainnet (com cuidado!)
npx hardhat run scripts/deployNFT.js --network ethereum
```

### 3. Upload de Metadados para IPFS

```bash
# Usando Pinata ou NFT.storage
# Fazer upload da pasta nft-metadata/
# Obter o hash IPFS
# Exemplo: QmXxxx...

# Atualizar baseURI no contrato
npx hardhat verify --network ethereum <CONTRACT_ADDRESS> "ipfs://QmXxxx/"
```

### 4. Verificação no OpenSea

- Ir para: https://opensea.io/
- Buscar pela address do contrato
- Confirmar que os 7 Elos NFTs aparecem corretamente
- Verificar que os metadados estão renderizando

---

## 📋 Especificação de Metadados

Cada NFT contém os seguintes atributos:

### Obrigatórios
```json
{
  "name": "ForjaElo - [ELO_NAME] (Elo [NUMBER])",
  "description": "Descrição completa do Elo...",
  "image": "ipfs://[HASH]/[elo-name].png",
  "external_url": "https://github.com/andresampaio624/ForjaElo-Framework"
}
```

### Attributes (Traits)
```json
"attributes": [
  {"trait_type": "Elo", "value": "[NAME]"},
  {"trait_type": "Número do Elo", "value": "[1-7]"},
  {"trait_type": "Sentido", "value": "[SENSE]"},
  {"trait_type": "Expressão", "value": "[EXPRESSION]"},
  {"trait_type": "Meta", "value": "[GOAL]"},
  {"trait_type": "Ação", "value": "[ACTION]"},
  {"trait_type": "Símbolo", "value": "[EMOJI]"},
  {"trait_type": "Supply Máximo", "value": "777"},
  {"trait_type": "Raridade", "value": "Lendário"},
  {"trait_type": "Framework", "value": "7 Elos - ForjaElo"}
]
```

---

## 🎁 Utilities Planejadas

### Fase 1: Governance
- [ ] Holders podem votar em futuras updates
- [ ] Cada NFT = 1 voto no DAO
- [ ] Quorum: 51% de holders

### Fase 2: Staking
- [ ] Combinar NFT Elo + Tokens FRJ
- [ ] Ganhar yield proporcionalmente
- [ ] Rewards em mais tokens FRJ

### Fase 3: Experiential
- [ ] Desbloquear conteúdo exclusivo por Elo
- [ ] Certificados digitais de progress
- [ ] Comunidade privada por nível

### Fase 4: Marketplace
- [ ] Trading entre NFTs Elos
- [ ] Liquidity pools especializadas
- [ ] Royalties para devs (10%)

---

## 🔁 Ciclo de Vida do Possuidor de NFT

```
1. DESCOBERTA
   ✗ Recebe NFT CHAMA via airdrop
   ✗ Começa jornada de transformação
         ⬇
2. PROGRESS
   ✗ Completa metas CHAMA
   ✗ Ganha insights dos outros Elos
         ⬇
3. ASCENÇÃO
   ✗ Coleciona todos os 7 Elos
   ✗ Desbloqueia badge especial
         ⬇
4. SERVEÇÃO
   ✗ Ajuda comunidade com experiencia dos 7 Elos
   ✗ Ganha status de líder
```

---

## 📞 Suporte e Documentação

- **Documentação Técnica:** [docs/NFT-STRUCTURE.md](./docs/NFT-STRUCTURE.md)
- **Contrato Inteligente:** [contracts/ForjaEloNFT.sol](./contracts/ForjaEloNFT.sol)
- **Framework Completo:** https://github.com/andresampaio624/ForjaElo-Framework
- **Token FRJ:** [contracts/ForjaElo.sol](./contracts/ForjaElo.sol)

---

## ✅ Checklist de Deploy

- [ ] Contratos compilam sem erros
- [ ] Testes unitários passam
- [ ] Deploy em testnet bem-sucedido
- [ ] Metadados no IPFS com hash verificado
- [ ] Verificação no OpenSea funcionando
- [ ] Metadados renderizando corretamente
- [ ] Documentação atualizada
- [ ] Airdrop configurado
- [ ] Roadmap comunicado à comunidade
- [ ] Deploy em mainnet

---

**Última Atualização:** 15 de Dezembro de 2025  
**Versão:** 1.0  
**Status:** Produção 🚀
