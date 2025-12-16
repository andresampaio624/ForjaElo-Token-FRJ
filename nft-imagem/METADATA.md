# Guia de Metadados NFT - ForjaElo

## 📦 Estrutura de Metadados Sugerida

Para cada NFT da coleção ForjaElo, utilize o seguinte padrão JSON:

### Template Base

```json
{
  "name": "ForjaElo #[NÚMERO]",
  "description": "[DESCRIÇÃO]",
  "image": "ipfs://[CID]/elo-[XX]-[nome].png",
  "attributes": [
    {
      "trait_type": "ELO Level",
      "value": "[NÍVEL]"
    },
    {
      "trait_type": "Tipo",
      "value": "[TIPO]"
    },
    {
      "trait_type": "Raridade",
      "value": "[RARIDADE]"
    },
    {
      "trait_type": "Emoji",
      "value": "[EMOJI]"
    }
  ]
}
```

## 🎯 Metadados por NFT

### ELO 1 - CHAMA
```json
{
  "name": "ForjaElo #1 - Chama",
  "description": "A chama inicial que acende o potencial. Representa o início da jornada no ecossistema ForjaElo.",
  "image": "ipfs://[CID]/elo-01-chama.png",
  "attributes": [
    {"trait_type": "ELO Level", "value": "1"},
    {"trait_type": "Tipo", "value": "Chama"},
    {"trait_type": "Raridade", "value": "Comum"},
    {"trait_type": "Elemento", "value": "Fogo"},
    {"trait_type": "Emoji", "value": "🔥"}
  ]
}
```

### ELO 2 - REFÚGIO
```json
{
  "name": "ForjaElo #2 - Refúgio",
  "description": "Um refúgio seguro para crescer e se desenvolver. Representa proteção e crescimento no ecossistema.",
  "image": "ipfs://[CID]/elo-02-refugio.png",
  "attributes": [
    {"trait_type": "ELO Level", "value": "2"},
    {"trait_type": "Tipo", "value": "Refúgio"},
    {"trait_type": "Raridade", "value": "Comum"},
    {"trait_type": "Elemento", "value": "Natureza"},
    {"trait_type": "Emoji", "value": "🏞️"}
  ]
}
```

### ELO 3 - POTÊNCIA
```json
{
  "name": "ForjaElo #3 - Potência",
  "description": "Energia pura e força ilimitada. Representa o poder crescente dentro do ecossistema ForjaElo.",
  "image": "ipfs://[CID]/elo-03-potencia.png",
  "attributes": [
    {"trait_type": "ELO Level", "value": "3"},
    {"trait_type": "Tipo", "value": "Potência"},
    {"trait_type": "Raridade", "value": "Incomum"},
    {"trait_type": "Elemento", "value": "Energia"},
    {"trait_type": "Emoji", "value": "⚡"}
  ]
}
```

### ELO 4 - CENTRAL
```json
{
  "name": "ForjaElo #4 - Central",
  "description": "O ponto central de todas as estratégias. Representa foco e precisão nas ações.",
  "image": "ipfs://[CID]/elo-04-central.png",
  "attributes": [
    {"trait_type": "ELO Level", "value": "4"},
    {"trait_type": "Tipo", "value": "Central"},
    {"trait_type": "Raridade", "value": "Incomum"},
    {"trait_type": "Elemento", "value": "Equilíbrio"},
    {"trait_type": "Emoji", "value": "🎯"}
  ]
}
```

### ELO 5 - TALENTO
```json
{
  "name": "ForjaElo #5 - Talento",
  "description": "A manifestação da criatividade e arte. Representa habilidades únicas e expressão artística.",
  "image": "ipfs://[CID]/elo-05-talento.png",
  "attributes": [
    {"trait_type": "ELO Level", "value": "5"},
    {"trait_type": "Tipo", "value": "Talento"},
    {"trait_type": "Raridade", "value": "Raro"},
    {"trait_type": "Elemento", "value": "Arte"},
    {"trait_type": "Emoji", "value": "🎨"}
  ]
}
```

### ELO 6 - ATLETA
```json
{
  "name": "ForjaElo #6 - Atleta",
  "description": "Velocidade, agilidade e performance em movimento. Representa excelência atlética e superação.",
  "image": "ipfs://[CID]/elo-06-atleta.png",
  "attributes": [
    {"trait_type": "ELO Level", "value": "6"},
    {"trait_type": "Tipo", "value": "Atleta"},
    {"trait_type": "Raridade", "value": "Raro"},
    {"trait_type": "Elemento", "value": "Movimento"},
    {"trait_type": "Emoji", "value": "🏃"}
  ]
}
```

### ELO 7 - IDÉ
```json
{
  "name": "ForjaElo #7 - Idé",
  "description": "A iluminação do conhecimento e inovação. Representa o nível máximo de sabedoria no ecossistema.",
  "image": "ipfs://[CID]/elo-07-ide.png",
  "attributes": [
    {"trait_type": "ELO Level", "value": "7"},
    {"trait_type": "Tipo", "value": "Idé"},
    {"trait_type": "Raridade", "value": "Épico"},
    {"trait_type": "Elemento", "value": "Conhecimento"},
    {"trait_type": "Emoji", "value": "💡"}
  ]
}
```

## 📝 Instruções de Upload

### Passo 1: Upload das Imagens para IPFS
1. Utilize serviços como [Pinata](https://pinata.cloud/), [NFT.Storage](https://nft.storage/) ou [IPFS Desktop](https://docs.ipfs.tech/install/ipfs-desktop/)
2. Faça upload de todas as 7 imagens
3. Anote o CID (Content Identifier) de cada imagem

### Passo 2: Criar Arquivos de Metadados
1. Crie um arquivo JSON para cada NFT usando os templates acima
2. Substitua `[CID]` pelo CID real de cada imagem
3. Nomeie os arquivos como: `1.json`, `2.json`, ..., `7.json`

### Passo 3: Upload dos Metadados para IPFS
1. Faça upload da pasta contendo todos os arquivos JSON
2. Anote o CID da pasta de metadados
3. A URI base será: `ipfs://[CID_DA_PASTA]/`

### Passo 4: Deploy do Contrato NFT
Use a URI base obtida no Passo 3 ao fazer o deploy do seu contrato ERC-721 ou ERC-1155.

## 🔗 Padrões de Compatibilidade

- **OpenSea:** Totalmente compatível
- **Rarible:** Totalmente compatível
- **LooksRare:** Totalmente compatível
- **Foundation:** Compatível
- **SuperRare:** Requer aprovação de artista

## ✅ Checklist de Publicação

- [ ] Todas as imagens foram otimizadas
- [ ] CIDs das imagens foram anotados
- [ ] Arquivos JSON de metadados criados
- [ ] Metadados uploaded para IPFS
- [ ] URI base configurada no contrato
- [ ] Contrato testado em testnet
- [ ] Contrato verificado no Etherscan/Polygonscan
- [ ] Coleção configurada no OpenSea

---

**Nota:** Substitua `[CID]` pelos Content Identifiers reais após upload no IPFS.