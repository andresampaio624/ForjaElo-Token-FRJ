# 📄 Metadados - ForjaElo 7 Elos

**Status:** ✅ Estruturado  
**Formato:** JSON (ERC-721)  
**Total:** 3 organizações diferentes  

---

## Estrutura

### core/
Dados essenciais consolidados
- `elos.json` - Todos os 7 ELOs em um arquivo
- `1.json` a `7.json` - Metadados individuais

### ipfs/
Metadados prontos para IPFS
- `1.json` a `7.json` - Formato ERC-721 válido
- Referenciador de imagens com CIDs

### elo-[1-7]-[nome]/
Dados detalhados por ELO
- `index.json` - Versão minificada
- `full-metadata.json` - Versão completa
- `schema.json` - Schema para validação

---

## Uso

**Para referrência rápida:** Use `core/elos.json`  
**Para deployment:** Use `ipfs/1.json` a `7.json`  
**Para detalhes:** Use pastas `elo-*/`  

---

**Status:** ✅ Completo
