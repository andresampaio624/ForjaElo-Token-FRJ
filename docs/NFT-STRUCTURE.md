# ForjaElo NFT Collection - Estrutura Dos 7 Elos

## Visão Geral

A Coleção de NFTs ForjaElo representa digitalmente os 7 Elos do Framework de Transformação Pessoal. Cada NFT é um token ERC-1155 que encapsula as dimensões, sentidos e ações de transformação de cada Elo.

---

## Estrutura Dos 7 Elos - NFT Collection

### 1. 🔥 CHAMA - Elo Fundação

| Atributo | Valor |
|----------|-------|
| **Token ID** | 1 |
| **Sentido** | Amor |
| **Expressão** | Espírito / Propósito |
| **Meta** | Prioridade |
| **Ação** | Adoração / Honra |
| **Supply Máximo** | 777 |
| **Raridade** | Lendário |

**Descrição:** Elo Fundação da Transformação Pessoal. CHAMA representa o despertar da chama interior que acende a jornada de transformação. Este NFT simboliza o propósito de vida e o sentido de honra que orienta todas as escolhas.

---

### 2. 🌞 REFÚGIO - Elo de Justiça

| Atributo | Valor |
|----------|-------|
| **Token ID** | 2 |
| **Sentido** | Alma |
| **Expressão** | Justiça |
| **Meta** | Liderança |
| **Ação** | Desintoxicação |
| **Supply Máximo** | 777 |
| **Raridade** | Lendário |

**Descrição:** Elo de Justiça e Liderança. REFÚGIO representa o abrigo seguro para o crescimento, onde a liderança se estabelece em bases sólidas. Este NFT simboliza a purificação da alma e a libertação do que prejudica.

---

### 3. ⚡ POTÊNCIA - Elo de Força

| Atributo | Valor |
|----------|-------|
| **Token ID** | 3 |
| **Sentido** | Força |
| **Expressão** | Processo |
| **Meta** | Hábito |
| **Ação** | Automatizar |
| **Supply Máximo** | 777 |
| **Raridade** | Lendário |

**Descrição:** Elo de Força e Hábito. POTÊNCIA representa a energia que alimenta a transformação, onde os hábitos se tornam automáticos e poderosos. Este NFT simboliza a construção de sistemas de poder.

---

### 4. 🎏 CENTRAL - Elo de Verdade

| Atributo | Valor |
|----------|-------|
| **Token ID** | 4 |
| **Sentido** | Verdade |
| **Expressão** | Autenticidade |
| **Meta** | Sistema |
| **Ação** | Vulnerabilidade |
| **Supply Máximo** | 777 |
| **Raridade** | Lendário |

**Descrição:** Elo de Verdade e Autenticidade. CENTRAL representa o coração do framework, onde a vulnerabilidade se torna força. Este NFT simboliza o alinhamento de todos os sistemas à verdade pessoal.

---

### 5. 🎎 TALENTO - Elo de Valor

| Atributo | Valor |
|----------|-------|
| **Token ID** | 5 |
| **Sentido** | Valor |
| **Expressão** | Domínio |
| **Meta** | Espaço |
| **Ação** | Mordomia |
| **Supply Máximo** | 777 |
| **Raridade** | Lendário |

**Descrição:** Elo de Valor e Domínio. TALENTO representa o cultivo dos talentos únicos. Este NFT simboliza a mordomia dos dons pessoais como uma responsabilidade sagrada.

---

### 6. 🏋 ATLETA - Elo de Corpo

| Atributo | Valor |
|----------|-------|
| **Token ID** | 6 |
| **Sentido** | Corpo |
| **Expressão** | Biologia |
| **Meta** | Forma |
| **Ação** | Testar |
| **Supply Máximo** | 777 |
| **Raridade** | Lendário |

**Descrição:** Elo de Corpo e Forma. ATLETA representa a disciplina do corpo como templo. Este NFT simboliza o vigor físico que sustenta toda a transformação.

---

### 7. 💡 IDÉ - Elo de Serviço

| Atributo | Valor |
|----------|-------|
| **Token ID** | 7 |
| **Sentido** | Servir |
| **Expressão** | Química |
| **Meta** | Conexão |
| **Ação** | Encorajar |
| **Supply Máximo** | 777 |
| **Raridade** | Lendário |

**Descrição:** Elo de Serviço e Conexão. IDÉ representa o ponto de culminação onde os seis elos se unem para servir. Este NFT simboliza a conexão transcendental que transforma a comunidade.

---

## Especificações Técnicas

### Contrato
- **Padrão:** ERC-1155 (Multi-Token)
- **Arquivo:** `contracts/ForjaEloNFT.sol`
- **Rede:** Ethereum (configurável para Polygon, Arbitrum, etc.)
- **Versão Solidity:** 0.8.30+

### Metadados
- **Padrão:** OpenSea Compatible
- **Local:** `nft-metadata/`
- **Formato:** JSON (1.json a 7.json)
- **Hospedagem:** IPFS (recomendado)

### Atributos Padrão em Cada NFT
```json
{
  "Elo": "Nome do Elo",
  "Número do Elo": "1-7",
  "Sentido": "Dimensão emocional/espiritual",
  "Expressão": "Manifestação principal",
  "Meta": "Objetivo de transformação",
  "Ação": "Ação concreta a realizar",
  "Símbolo": "Emoji representativo",
  "Supply Máximo": "777",
  "Raridade": "Lendário",
  "Framework": "7 Elos - ForjaElo"
}
```

---

## Integração com Token FRJ

### Utilities Planeadas

1. **Governo:** Holders de NFTs Elo terão direito de voto sobre decisões do framework
2. **Staking:** Combinar NFTs com tokens FRJ para yield especial
3. **Acesso:** Conteúdo exclusivo desbloqueado por Elo possuído
4. **Marketplace:** Troca de NFTs entre membros da comunidade
5. **Achievements:** Badges especiais por completação de épicos

### Distribuição Recomendada

| Propósito | Quantidade | Detalhes |
|-----------|-----------|----------|
| Airdrop Comunitário | 10% | Para membros fundadores |
| Prêmios de Engajamento | 20% | Earned through framework progression |
| Liquidez Secundária | 30% | Para marketplace/trading |
| Tesouraria | 40% | Para futuras estratégias e desenvolvimento |

---

## Como Mintar NFTs

### Via Contrato Inteligente

```solidity
// Mintar um único NFT
ForjaEloNFT.mint(userAddress, tokenId, quantity);

// Mintar múltiplos Elos
ForjaEloNFT.mintBatch(
  userAddress,
  [1, 2, 3, 4, 5, 6, 7],
  [1, 1, 1, 1, 1, 1, 1]
);
```

### Verificação no OpenSea

1. Copiar endereço do contrato ForjaEloNFT
2. Buscar na rede apropriada
3. Verificar que metadata está renderizando corretamente
4. Confirmar que 7 tipos de NFTs aparecem

---

## Roadmap de Desenvolvimento

### Fase 1: Fundação ✅
- [x] Design dos 7 Elos NFTs
- [x] Contrato ERC-1155
- [x] Metadados em JSON
- [x] Alinhamento com tabela de framework

### Fase 2: Lançamento 🚀
- [ ] Deploy em Mainnet
- [ ] Verificação em Etherscan
- [ ] Listagem no OpenSea
- [ ] Airdrop para comunidade

### Fase 3: Utilidades 🔮
- [ ] Sistema de Staking
- [ ] Governance Voting
- [ ] Marketplace de Elos
- [ ] Integração com DeFi

---

## Referências

- [ERC-1155 Standard](https://eips.ethereum.org/EIPS/eip-1155)
- [OpenSea Metadata Standards](https://docs.opensea.io/docs/metadata-standards)
- [Framework dos 7 Elos Completo](./7-ELOS.md)
- [Documentação do Contrato](./contracts/ForjaEloNFT.sol)

---

**Versão:** 1.0  
**Atualizado:** 15 de Dezembro de 2025  
**Status:** Produção
