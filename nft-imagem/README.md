# NFTs ForjaElo - Coleção ELO

## 📋 Visão Geral

Coleção oficial de NFTs do projeto ForjaElo Token (FRJ). Cada NFT representa um nível ELO com seus atributos oficiais.

## 📁 Estrutura do Repositório

```
nft-imagem/
├── README.md                          # Este arquivo
├── METADATA.md                        # Guia completo de metadados
├── metadata/                          # Arquivos JSON prontos para IPFS
│   ├── README.md                      # Instruções de uso dos metadados
│   ├── 1.json                         # ELO 1 - Chama
│   ├── 2.json                         # ELO 2 - Refúgio
│   ├── 3.json                         # ELO 3 - Potência
│   ├── 4.json                         # ELO 4 - Central
│   ├── 5.json                         # ELO 5 - Talento
│   ├── 6.json                         # ELO 6 - Atleta
│   └── 7.json                         # ELO 7 - Idé
└── [imagens originais]               # 7 arquivos PNG
```

## 🎨 Coleção Completa

### *️⃣ ELO 1 - CHAMA (🔥)
- **Sentido:** Amor
- **Expressão:** Espírito / Propósito
- **Meta:** Prioridade
- **Ação:** Adoração / Honra
- **Arquétipo:** Cultural
- **Metadados:** [`metadata/1.json`](./metadata/1.json)

### *️⃣ ELO 2 - REFÚGIO (🏞️)
- **Sentido:** Alma
- **Expressão:** Justiça
- **Meta:** Liderança
- **Ação:** Desintoxicação
- **Arquétipo:** Natural
- **Metadados:** [`metadata/2.json`](./metadata/2.json)

### *️⃣ ELO 3 - POTÊNCIA (⚡)
- **Sentido:** Força
- **Expressão:** Processo
- **Meta:** Hábito
- **Ação:** Automatizar
- **Arquétipo:** Máquina
- **Metadados:** [`metadata/3.json`](./metadata/3.json)

### *️⃣ ELO 4 - CENTRAL (🎯)
- **Sentido:** Verdade
- **Expressão:** Autenticidade
- **Meta:** Sistema
- **Ação:** Vulnerabilidade
- **Arquétipo:** Virtude
- **Metadados:** [`metadata/4.json`](./metadata/4.json)

### *️⃣ ELO 5 - TALENTO (🎨)
- **Sentido:** Valor
- **Expressão:** Domínio
- **Meta:** Espaço
- **Ação:** Mordomia
- **Arquétipo:** Excelência
- **Metadados:** [`metadata/5.json`](./metadata/5.json)

### *️⃣ ELO 6 - ATLETA (🏃)
- **Sentido:** Corpo
- **Expressão:** Biologia
- **Meta:** Forma
- **Ação:** Testar
- **Arquétipo:** Foco
- **Metadados:** [`metadata/6.json`](./metadata/6.json)

### *️⃣ ELO 7 - IDÉ (💡)
- **Sentido:** Servir
- **Expressão:** Química
- **Meta:** Conexão
- **Ação:** Encorajar
- **Arquétipo:** Irmandade
- **Metadados:** [`metadata/7.json`](./metadata/7.json)

## 📊 Estatísticas da Coleção

| Estatística | Valor |
|-------------|-------|
| Total de NFTs | 7 |
| Tamanho Total | ~22 MB |
| Formato | PNG |
| Resolução | Alta Qualidade |
| Metadados | JSON (padrão ERC-721) |

## 📖 Atributos dos ELOs

| ELO | Nome | Sentido | Expressão | Meta | Ação | Arquétipo |
|-----|------|---------|-----------|------|------|----------|
| 1 | Chama | Amor | Espírito / Propósito | Prioridade | Adoração / Honra | Cultural |
| 2 | Refúgio | Alma | Justiça | Liderança | Desintoxicação | Natural |
| 3 | Potência | Força | Processo | Hábito | Automatizar | Máquina |
| 4 | Central | Verdade | Autenticidade | Sistema | Vulnerabilidade | Virtude |
| 5 | Talento | Valor | Domínio | Espaço | Mordomia | Excelência |
| 6 | Atleta | Corpo | Biologia | Forma | Testar | Foco |
| 7 | Idé | Servir | Química | Conexão | Encorajar | Irmandade |

## 🚀 Guia Rápido de Deploy

### 1. Upload das Imagens para IPFS
```bash
# Faça upload de todas as imagens PNG
# Anote os CIDs de cada uma
```

### 2. Atualizar Metadados
```bash
# Edite os arquivos em metadata/
# Substitua os CIDs placeholder pelos reais
```

### 3. Upload dos Metadados
```bash
# Faça upload da pasta metadata/ para IPFS
# Use o CID da pasta no seu contrato
```

### 4. Deploy do Contrato
```solidity
string public baseURI = "ipfs://[SEU_CID]/";
```

Para instruções detalhadas, veja:
- [`METADATA.md`](./METADATA.md) - Guia completo de metadados
- [`metadata/README.md`](./metadata/README.md) - Instruções específicas de upload

## 🔗 Links Úteis

- [Repositório Principal](https://github.com/andresampaio624/ForjaElo-Token-FRJ)
- [NFT.Storage](https://nft.storage/) - Upload gratuito para IPFS
- [Pinata](https://pinata.cloud/) - Serviço IPFS
- [OpenSea](https://opensea.io/) - Marketplace NFT

## ✅ Recursos Disponíveis

- ✅ 7 imagens NFT em alta resolução (PNG)
- ✅ Metadados JSON prontos para uso
- ✅ Documentação completa
- ✅ Guia passo a passo de deploy
- ✅ Compatibilidade com principais marketplaces
- ✅ Padrão ERC-721 completo

## 📝 Padrões e Compatibilidade

### Padrões Suportados
- ERC-721 (NFT padrão)
- ERC-1155 (Multi-token)
- Metadados JSON OpenSea
- IPFS/Arweave storage

### Marketplaces Compatíveis
- ✅ OpenSea
- ✅ Rarible  
- ✅ LooksRare
- ✅ Foundation
- ✅ Magic Eden
- ✅ Blur

## 📄 Licença

Todos os direitos reservados - ForjaElo Token Project

---

**Última atualização:** Dezembro 2025  
**Mantenedor:** [@andresampaio624](https://github.com/andresampaio624)