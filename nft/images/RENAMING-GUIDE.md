# 🎨 Guia de Renomeação de Imagens

**Status:** 📊 Manual para Renomeação  
**Data:** Dezembro 16, 2025  

---

## 🔍 Nomes Atuais vs Recomendados

### Formato Atual (❏ Não Ideal)
```
ELO 1 - CHAMA (🔥) (1).png
ELO 2 - REFÚGIO (🏞️) (1).png
ELO 3 - POTÊNCIA (⚡) (1).png
ELO 4 - CENTRAL (🎯) (1).png
ELO 5 - TALENTO (🎨) (1).png
ELO 6 - ATLETA (🏃) (1).png
ELO 7 - IDÉ (💡) (1).png
```

**Problemas:**
- 🔕 " (1)" no final (duplicação acidental)
- 🔕 Nomes muito longos
- 🔕 Dificulta scripts e processamento

### Formato Recomendado (✨ Ideal)

#### Opção 1: Numérico + Nome (RECOMENDADO)
```
1-chama.png
2-refugio.png
3-potencia.png
4-central.png
5-talento.png
6-atleta.png
7-ide.png
```

**Vantagens:**
- ✅ Fácil de processar
- ✅ Nomes curtos e limpos
- ✅ Ótimo para scripts
- ✅ Universal em sistemas operacionais
- ✅ Sem caracteres especiais problematicos

#### Opção 2: Nome Completo Limpo
```
chama.png
refugio.png
potencia.png
central.png
talento.png
atleta.png
ide.png
```

---

## 🚀 Como Fazer a Renomeação

### Via Linha de Comando (Local)

```bash
# 1. Clone ou navegue para o repositório
cd ForjaElo-Token-FRJ
git pull origin main

# 2. Navegue para a pasta de imagens
cd nft/images

# 3. Renomeie os arquivos (Opção 1 - Recomendada)
mv "ELO 1 - CHAMA (🔥) (1).png" "1-chama.png"
mv "ELO 2 - REFÚGIO (🏞️) (1).png" "2-refugio.png"
mv "ELO 3 - POTÊNCIA (⚡) (1).png" "3-potencia.png"
mv "ELO 4 - CENTRAL (🎯) (1).png" "4-central.png"
mv "ELO 5 - TALENTO (🎨) (1).png" "5-talento.png"
mv "ELO 6 - ATLETA (🏃) (1).png" "6-atleta.png"
mv "ELO 7 - IDÉ (💡) (1).png" "7-ide.png"

# 4. Verifique as mudanças
ls -la
git status

# 5. Confirme e envie
git add .
git commit -m "🎨 refactor: Rename NFT images to cleaner, standardized format"
git push origin main
```

### Via GitHub Web Interface

1. Acesse: https://github.com/andresampaio624/ForjaElo-Token-FRJ/tree/main/nft/images
2. Para cada arquivo:
   - Clique no nome do arquivo
   - Clique no " de lápis"
   - Mude o nome para o novo formato
   - Clique "Commit changes"

---

## 💻 Exemplo Completo

### Antes
```
nft/images/
├── README.md
├── ELO 1 - CHAMA (🔥) (1).png    # 2.8 MB
├── ELO 2 - REFÚGIO (🏞️) (1).png  # 3.3 MB
├── ELO 3 - POTÊNCIA (⚡) (1).png # 3.0 MB
├── ELO 4 - CENTRAL (🎯) (1).png # 3.1 MB
├── ELO 5 - TALENTO (🎨) (1).png # 3.4 MB
├── ELO 6 - ATLETA (🏃) (1).png  # 3.4 MB
└── ELO 7 - IDÉ (💡) (1).png    # 3.4 MB
```

### Depois
```
nft/images/
├── README.md
├── 1-chama.png          # 2.8 MB
├── 2-refugio.png        # 3.3 MB
├── 3-potencia.png       # 3.0 MB
├── 4-central.png        # 3.1 MB
├── 5-talento.png        # 3.4 MB
├── 6-atleta.png         # 3.4 MB
└── 7-ide.png            # 3.4 MB
```

---

## 📚 Tabela de Referência

| ELO | Nome Atual | Nome Novo |
|-----|-----------|----------|
| 1 | ELO 1 - CHAMA (🔥) (1).png | 1-chama.png |
| 2 | ELO 2 - REFÚGIO (🏞️) (1).png | 2-refugio.png |
| 3 | ELO 3 - POTÊNCIA (⚡) (1).png | 3-potencia.png |
| 4 | ELO 4 - CENTRAL (🎯) (1).png | 4-central.png |
| 5 | ELO 5 - TALENTO (🎨) (1).png | 5-talento.png |
| 6 | ELO 6 - ATLETA (🏃) (1).png | 6-atleta.png |
| 7 | ELO 7 - IDÉ (💡) (1).png | 7-ide.png |

---

## ✅ Beneficios da Renomeação

- ✅ **Limpeza**: Remove nomes redundantes
- ✅ **Compatibilidade**: Melhor com scripts e sistemas
- ✅ **SEO**: Nomes mais amigáveis
- ✅ **IPFS**: Melhor para processamento automático
- ✅ **UX**: Mais fácil de usar em front-end

---

## 📂 Atualizar Documentação Após

Após renomear, atualize:

1. `nft/images/README.md` - Reflita os novos nomes
2. `nft/STATS.md` - Se mencionar nomes
3. `README.md` (raiz) - Se houver referências
4. `NFT-CONTEXT.md` - Se houver referências

---

**Status:** 📊 Manual de Renomeação  
**Data:** Dezembro 16, 2025
