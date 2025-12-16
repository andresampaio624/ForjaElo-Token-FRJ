# Metadados NFT - ForjaElo

## 📚 Conteúdo

Esta pasta contém os arquivos JSON de metadados para cada NFT da coleção ForjaElo, prontos para upload no IPFS.

## 📁 Arquivos

- `1.json` - ELO 1: Chama 🔥
- `2.json` - ELO 2: Refúgio 🏞️
- `3.json` - ELO 3: Potência ⚡
- `4.json` - ELO 4: Central 🎯
- `5.json` - ELO 5: Talento 🎨
- `6.json` - ELO 6: Atleta 🏃
- `7.json` - ELO 7: Idé 💡

## 🚀 Como Usar

### Passo 1: Atualizar CIDs das Imagens

Antes de fazer o upload, você precisa:

1. Fazer upload das imagens NFT para IPFS
2. Obter o CID (Content Identifier) de cada imagem
3. Substituir `QmXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX` nos arquivos JSON pelo CID real

**Exemplo:**
```json
"image": "ipfs://QmYourActualCIDHere/elo-01-chama.png"
```

### Passo 2: Upload para IPFS

#### Opção A: NFT.Storage (Recomendado)
```bash
# Instale a CLI do NFT.Storage
npm install -g @nftstorage/client

# Faça upload da pasta
nftstorage upload metadata/
```

#### Opção B: Pinata
1. Acesse [Pinata.cloud](https://pinata.cloud/)
2. Clique em "Upload" > "Folder"
3. Selecione a pasta `metadata`
4. Copie o CID gerado

#### Opção C: IPFS Desktop
1. Abra o IPFS Desktop
2. Arraste a pasta `metadata` para a interface
3. Copie o CID da pasta

### Passo 3: Configurar no Contrato

Após o upload, use a URI base no seu contrato ERC-721:

```solidity
string public baseURI = "ipfs://[SEU_CID_DA_PASTA_METADATA]/";
```

O contrato irá concatenar automaticamente:
- Token #1 → `ipfs://[CID]/1.json`
- Token #2 → `ipfs://[CID]/2.json`
- etc.

## 📝 Estrutura dos Metadados

Cada arquivo JSON segue o padrão ERC-721:

```json
{
  "name": "Nome do NFT",
  "description": "Descrição detalhada",
  "image": "ipfs://[CID]/imagem.png",
  "external_url": "https://seu-site.com",
  "attributes": [
    {
      "trait_type": "Atributo",
      "value": "Valor"
    }
  ]
}
```

## ✅ Checklist de Verificação

Antes de fazer o deploy:

- [ ] Todos os CIDs das imagens foram atualizados nos arquivos JSON
- [ ] Os 7 arquivos JSON estão completos e válidos
- [ ] Pasta metadata foi uploaded para IPFS
- [ ] CID da pasta metadata foi anotado
- [ ] BaseURI configurada no contrato
- [ ] Testado em testnet (Goerli/Mumbai)

## 🔗 Compatibilidade

Estes metadados são compatíveis com:

- ✅ OpenSea
- ✅ Rarible  
- ✅ LooksRare
- ✅ Foundation
- ✅ Magic Eden
- ✅ Blur

## 📊 Atributos Disponíveis

Cada NFT possui os seguintes atributos:

- **ELO Level:** 1-7
- **Tipo:** Chama, Refúgio, Potência, Central, Talento, Atleta, Idé
- **Raridade:** Comum, Incomum, Raro, Épico
- **Elemento:** Fogo, Natureza, Energia, Equilíbrio, Arte, Movimento, Conhecimento
- **Emoji:** Emoji representativo de cada ELO
- **Coleção:** ForjaElo Genesis

---

**Importante:** Mantenha backup dos CIDs e nunca delete os arquivos do IPFS após o deploy!