# 💱 Estrutura NFT ForjaElo - Guia de Organização

**Status:** ✅ 100% Atualizado  
**Data:** Dezembro 16, 2025  
**Versão:** 1.0.0  

---

## 📁 Índice da Estrutura

### 1. [Visão Geral da Organização](#vis%C3%A3o-geral-da-organiza%C3%A7%C3%A3o)
### 2. [Estrutura de Pastas](#estrutura-de-pastas)
### 3. [Descrição de Arquivos](#descri%C3%A7%C3%A3o-de-arquivos)
### 4. [Fluxo de Dados](#fluxo-de-dados)
### 5. [Padrões e Convenções](#padr%C3%B5es-e-conven%C3%A7%C3%B5es)
### 6. [Guia de Uso](#guia-de-uso)

---

## 📑 Visão Geral da Organização

### Princípios de Design

A estrutura foi projetada seguindo estes princípios:

🎈 **Clareza:** Fácil compreensão da hierarquia
🔐 **Modularidade:** Componentes independentes e reutilizáveis  
📼 **Escalabilidade:** Fácil adicionar novos ELOs ou dados
📚 **Documentação:** Cada nível bem documentado
🔄 **Consistência:** Padrões aplicados uniformemente

### Camadas da Organização

```
┌───────────────────────────────────┐
│  CAMADA 1: ARQUIVOS DE IMAGEM (nft-imagem/)          │
│  - Imagens de alta resolução (PNG)                  │
│  - Metadados descritivos                              │
├───────────────────────────────────┤
│  CAMADA 2: METADADOS INDIVIDUAIS (nft-metadata/)      │
│  - Arquivos JSON por ELO (1.json - 7.json)           │
│  - Pastas organizadas (elo-[id]-[nome]/)             │
├───────────────────────────────────┤
│  CAMADA 3: COLÉÇÃO CONSOLIDADA (nft-metadata/)         │
│  - elos.json (referência mestre)                   │
│  - COMPLETE-COLLECTION.json (dados completos)        │
├───────────────────────────────────┤
│  CAMADA 4: DOCUMENTAÇÃO (Raiz do repositório)        │
│  - NFT-COMPLETE-GUIDE.md (guia detalhado)             │
│  - NFT-STRUCTURE.md (este arquivo)                   │
│  - NFT-INTEGRATION.md (guia de integração)          │
│  - README.md (documentação principal)                 │
└───────────────────────────────────┘
```

---

## 📁 Estrutura de Pastas

### Árvore Completa

```
ForjaElo-Token-FRJ/
├── 🗌️ NFT-COMPLETE-GUIDE.md              # Guia completo (NOVO)
├── 🗌️ NFT-STRUCTURE.md                   # Estrutura e organização (NOVO)
├── 🗌️ NFT-INTEGRATION.md                 # Guia de integração
├── 🗌️ README.md                           # Documentação principal
├── 🗌️ metadata.json                     # Metadados gerais
├── 📁 nft-imagem/                        # REPOSITÓRIO DE IMAGENS
│   ├── README.md                         # Guia de imagens
│   ├── METADATA.md                       # Guia de metadados
│   ├── 🖼️ [7 Arquivos PNG]              # Imagens de alta resolução
│   └── 📁 metadata/                      # Metadados prontos para IPFS
│       ├── 1.json
│       ├── 2.json
│       ├── 3.json
│       ├── 4.json
│       ├── 5.json
│       ├── 6.json
│       └── 7.json
│
├── 📁 nft-metadata/                      # REPOSITÓRIO DE METADADOS
│   ├── elos.json                       # Arquivo mestre com todos os ELOs
│   ├── COMPLETE-COLLECTION.json        # Coleção completa consolidada (NOVO)
│   ├── 1.json - 7.json                 # Metadados individuais
│   ├── 📁 elo-1-chama/                # PASTA DO ELO 1
│   │   ├── index.json
│   │   ├── full-metadata.json
│   │   └── schema.json
│   ├── 📁 elo-2-refugio/                # PASTA DO ELO 2
│   │   ├── index.json
│   │   ├── full-metadata.json
│   │   └── schema.json
│   ├── 📁 elo-3-potencia/               # PASTA DO ELO 3
│   ├── 📁 elo-4-central/                 # PASTA DO ELO 4
│   ├── 📁 elo-5-talento/                 # PASTA DO ELO 5
│   ├── 📁 elo-6-atleta/                  # PASTA DO ELO 6
│   └── 📁 elo-7-ide/                     # PASTA DO ELO 7
│
├── 📁 contracts/                        # Contratos inteligentes
├── 📁 docs/                             # Documentação técnica
├── 📁 scripts/                         # Scripts de deployment
└── 📁 assets/                          # Assets diversos
```

---

## 🗌️ Descrição de Arquivos

### Nível 1: Imagens (nft-imagem/)

#### Arquivos de Imagem

| Arquivo | Tamanho | Formato | Resolução | Descrição |
|---------|---------|---------|-----------|-------------|
| ELO 1 - CHAMA (🔥).png | 2.8 MB | PNG | Alta | Imagem original do ELO 1 |
| ELO 2 - REFÚGIO (🏞️).png | 3.3 MB | PNG | Alta | Imagem original do ELO 2 |
| ELO 3 - POTÊNCIA (⚡).png | 3.0 MB | PNG | Alta | Imagem original do ELO 3 |
| ELO 4 - CENTRAL (🎯).png | 3.1 MB | PNG | Alta | Imagem original do ELO 4 |
| ELO 5 - TALENTO (🎨).png | 3.4 MB | PNG | Alta | Imagem original do ELO 5 |
| ELO 6 - ATLETA (🏃).png | 3.4 MB | PNG | Alta | Imagem original do ELO 6 |
| ELO 7 - IDÉ (💡).png | 3.4 MB | PNG | Alta | Imagem original do ELO 7 |

**Total:** 22 MB em 7 arquivos

#### Metadados de Suporte (nft-imagem/)

- **README.md** - Guia de imagens da coleção
- **METADATA.md** - Guia detalhado de metadados
- **metadata/** - Pasta com JSONs prontos para IPFS

### Nível 2: Metadados Individuais (nft-metadata/)

#### Arquivos JSON Principais

```json
// 1.json - 7.json
// Tamanho: 400-460 bytes cada
// Uso: Padrão ERC-721 para marketplaces
{
  "name": "ELO X - [NOME] [EMOJI]",
  "description": "...",
  "image": "ipfs://[CID]/",
  "attributes": [...]
}
```

#### Arquivos de Referência

- **elos.json** (1.6 KB)
  - Arquivo mestre com todos os 7 ELOs
  - Versão consolidada para referência rápida
  - Últil para leitura de dados completos

- **COMPLETE-COLLECTION.json** (10 KB) 🎆 NOVO
  - Coleção completa com todos os detalhes
  - Inclui descrições, significados e aplicações
  - Referência central de dados

#### Pastas por ELO (elo-[id]-[nome]/)

Cada ELO possui uma pasta com:

```
elo-1-chama/
├── index.json              # Metadados básicos
├── full-metadata.json     # Metadados completos
└── schema.json            # Schema de validação
```

**Conteúdo:**
- `index.json` - Versão minificada
- `full-metadata.json` - Versão completa com todos os campos
- `schema.json` - Schema para validação

### Nível 3: Documentação (Raíz)

#### Guias Disponíveis

| Arquivo | Propósito | Tamanho | Atualização |
|---------|----------|---------|----------------|
| **NFT-COMPLETE-GUIDE.md** | Guia completo de NFTs | ~16 KB | Dezembro 2025 🎆 NOVO |
| **NFT-STRUCTURE.md** | Estrutura e organização | ~12 KB | Dezembro 2025 🎆 NOVO |
| **NFT-INTEGRATION.md** | Guia de integração | ~6 KB | Atual |
| **README.md** | Documentação principal | ~10 KB | Atual |

---

## 🔄 Fluxo de Dados

### Fluxo Unidirecional

```
┌───────────────────────────────┐
│  🖼️ IMAGENS PNG                               │
│  (nft-imagem/ELO-*.png)                      │
└───────────────────────────────┘
                      ↑
                  Referência
                      ↑
┌───────────────────────────────┐
│  📄 METADADOS INDIVIDUAIS                       │
│  (nft-metadata/1.json - 7.json)             │
│  (nft-imagem/metadata/1.json - 7.json)      │
└───────────────────────────────┘
                      ↑
              Consolidação
                      ↑
┌───────────────────────────────┐
│  📁 COLEÇÃO CONSOLIDADA                        │
│  (elos.json)                                 │
│  (COMPLETE-COLLECTION.json) 🎆 NOVO           │
└───────────────────────────────┘
                      ↑
           Documentação/Referência
                      ↑
┌───────────────────────────────┐
│  🗌️ GUIAS E DOCUMENTAÇÃO                     │
│  (NFT-COMPLETE-GUIDE.md) 🎆 NOVO              │
│  (NFT-STRUCTURE.md) 🎆 NOVO                  │
│  (NFT-INTEGRATION.md)                        │
└───────────────────────────────┘
                      ↑
              Deploy para IPFS
                      ↑
┌───────────────────────────────┐
│  🤖 CONTRATO INTELIGENTE                       │
│  (Polygon / Ethereum)                        │
└───────────────────────────────┘
                      ↑
              Mint de NFTs
                      ↑
┌───────────────────────────────┐
│  🔶 COLEÇÃO LIVE                             │
│  (OpenSea, Rarible, etc)                    │
└───────────────────────────────┘
```

### Mapeamento de Dados

```
ELO 1 - CHAMA
├── PNG (nft-imagem/ELO 1 - CHAMA.png)
├── JSON Individual (nft-metadata/1.json)
├── JSON IPFS (nft-imagem/metadata/1.json)
├── Pasta Detalhada (nft-metadata/elo-1-chama/)
└── Referência em COMPLETE-COLLECTION.json
```

---

## 📱 Padrões e Convenções

### Convenção de Nomes

#### Imagens
```
ELO [ID] - [NOME] ([EMOJI]).png

Exemplo:
ELO 1 - CHAMA (🔥).png
ELO 2 - REFÚGIO (🏞️).png
```

#### Metadados
```
[ID].json

Exemplo:
1.json
2.json

OU em pastas:
elo-[ID]-[nome-em-minuscula]/

Exemplo:
elo-1-chama/
elo-2-refugio/
```

#### Documentação
```
NFT-[TIPO].md

Exemplo:
NFT-COMPLETE-GUIDE.md
NFT-STRUCTURE.md
NFT-INTEGRATION.md
```

### Padrão JSON ERC-721

```json
{
  "name": "ELO X - [NOME] [EMOJI]",
  "description": "Sentido: [valor]\nExpressão: [valor]\nMeta: [valor]\nAção: [valor]\nArquétipo: [valor]",
  "image": "ipfs://[CID]/[filename]",
  "attributes": [
    {
      "trait_type": "Sentido",
      "value": "[valor]"
    },
    {
      "trait_type": "Expressão",
      "value": "[valor]"
    },
    {
      "trait_type": "Meta",
      "value": "[valor]"
    },
    {
      "trait_type": "Ação",
      "value": "[valor]"
    },
    {
      "trait_type": "Arquétipo",
      "value": "[valor]"
    }
  ]
}
```

---

## 📄 Guia de Uso

### Para Desenvolvedores

#### 1. Obter Dados de Um ELO

**Opção A: Arquivo Individual**
```bash
curl https://raw.githubusercontent.com/..../nft-metadata/1.json
```

**Opção B: Coleção Completa**
```bash
curl https://raw.githubusercontent.com/..../nft-metadata/COMPLETE-COLLECTION.json
```

#### 2. Fazer Deploy

Ver: [NFT-INTEGRATION.md](./NFT-INTEGRATION.md)

#### 3. Integrar com Smart Contract

```solidity
// Exemplo de leitura de metadados
string public baseURI = "ipfs://[CID]/";

function tokenURI(uint256 tokenId) 
    public 
    view 
    override 
    returns (string memory) 
{
    return string(abi.encodePacked(baseURI, tokenId.toString(), ".json"));
}
```

### Para Designers

#### Adicionar Novo ELO

1. Criar imagem PNG (mesma resolução)
2. Nomear como: `ELO [ID] - [NOME] ([EMOJI]).png`
3. Adicionar JSON em `nft-metadata/[ID].json`
4. Criar pasta `nft-metadata/elo-[id]-[nome]/`
5. Atualizar `COMPLETE-COLLECTION.json`

### Para Gestores de Projeto

#### Verificar Status

- ✅ Imagens: 7/7 presentes
- ✅ Metadados Individuais: 7/7 JSON files
- ✅ Coleção Consolidada: elos.json + COMPLETE-COLLECTION.json
- ✅ Documentação: 3 guias completos
- ✅ Pastas por ELO: 7/7 estruturadas

#### Checklist de Atualização

- [ ] Arquivos de imagem sincronizados
- [ ] Metadados JSON validados
- [ ] COMPLETE-COLLECTION.json atualizado
- [ ] Documentação revisada
- [ ] Links verificados
- [ ] Versionamento atualizado

---

## 📀 Histórico de Estrutura

### V1.0.0 (Dezembro 2025)

**Melhorias Implementadas:**
- 🎆 Novo arquivo `COMPLETE-COLLECTION.json`
- 🎆 Novo guia `NFT-COMPLETE-GUIDE.md`
- 🎆 Novo documento `NFT-STRUCTURE.md` (este arquivo)
- 🔍 Reorganização completa de pastas
- 📚 Documentação centralizada
- 🔄 Fluxo de dados otimizado

---

## ✅ Status de Atualização

| Item | Status | Data |
|------|--------|------|
| Imagens | ✅ Completo | Dezembro 2025 |
| Metadados Individuais | ✅ Completo | Dezembro 2025 |
| Coleção Consolidada | 🎆 NOVO | Dezembro 2025 |
| Guias de Documentação | 🎆 NOVO | Dezembro 2025 |
| Estrutura de Pastas | 🎆 OTIMIZADA | Dezembro 2025 |

---

**📧 Mantenedor:** @andresampaio624  
**📅 Data:** Dezembro 16, 2025  
**📚 Versão:** 1.0.0  
**✅ Status:** Completo e Verificado
