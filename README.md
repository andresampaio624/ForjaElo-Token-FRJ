# ForjaElo Token (FRJ)

<div align="center">
  <p align="center">
    <img src="./assets/logo.svg" alt="ForjaElo Logo" width="200" />
    <br />
    <strong>Token de Utilidade e Governança do Framework dos 7 Elos</strong>
  </p>
  <p>
    <a href="https://ethereum.org"><img src="https://img.shields.io/badge/Ethereum-ERC--20-3C3C3D?logo=ethereum" alt="Ethereum"/></a>
    <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" /></a>
    <a href="https://soliditylang.org/"><img src="https://img.shields.io/badge/Solidity-0.8.30-blue" alt="Solidity" /></a>
  </p>
</div>

<div align="center">

## 🔥 ForjaElo — Framework dos 7 Elos

**Um framework de transformação pessoal estruturado em 7 dimensões interdependentes.**

[![Framework](https://img.shields.io/badge/Framework-7%20Elos-orange?style=for-the-badge)](documentacao/7-ELOS.md)
[![Licença](https://img.shields.io/badge/Licença-MIT-yellow?style=for-the-badge)](LICENCA.md)
[![Status](https://img.shields.io/badge/Status-v0.1.0-green?style=for-the-badge)](#)
[![Acesso para Corretores](https://img.shields.io/badge/DC-%20Documento%20de%20Distribuição%20Controlada-blue?style=for-the-badge)](#)

</div>

Repositório público que reúne **todo o código-fonte e materiais de divulgação do token ERC-20 ForjaElo (FRJ)**, preparado para auditorias comunitárias, validações em corretoras e envio a parceiros.

- 📚 [Documentação rápida](./docs/README.md)
- 🛠️ [Contrato no PolygonScan](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C)
- 💡 [Guia do contrato e build](#como-trabalhar-com-o-contrato)
- 🖼️ [Ativos oficiais](./assets)
- ✅ [Checklist de prontidão pública](./docs/PUBLIC_RELEASE_CHECKLIST.md)
- 🌐 [Framework dos 7 Elos](https://github.com/andresampaio624/ForjaElo-Framework)
- 🧾 [Dossiê de veracidade do framework](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1)

---

## 📊 Detalhes do token

- **Nome:** ForjaElo
- **Símbolo:** FRJ
- **Decimais:** 18
- **Total Supply:** 777.000.000 FRJ (supply fixo, mintado no deploy)
- **Contrato:** [`0x1353e990557c05e9336f83053e0b32263d1bba6C`](https://polygonscan.com/token/0x1353e990557c05e9336f83053e0b32263d1bba6C)
- **Padrão:** ERC-20 com base no OpenZeppelin
- **Rede:** Polygon PoS

Para compilar ou verificar o contrato manualmente, utilize o guia abaixo e o passo a passo de geração do JSON em `polygon-verify/ForjaElo-polygonscan-standard-input.json`.

---

## 🗂️ Estrutura do projeto

```text
contracts/                 # Código-fonte do contrato (ForjaElo.sol) e remappings do OpenZeppelin
@openzeppelin/             # Dependências utilizadas pelo contrato
scripts/                   # Script para gerar o JSON de verificação no PolygonScan
polygon-verify/            # Artefatos de verificação gerados pelo script
assets/                    # Logos e mídias oficiais
docs/                      # Documentação rápida e links úteis do token
metadata.json              # Metadados extraídos do Sourcify para verificação pública
ForjaElo-Token-FRJ-main.zip# Pacote original do diretório de materiais públicos
```

Manter essa hierarquia facilita localizar rapidamente o contrato, scripts de build e materiais oficiais do token.

---

## 🧭 Como trabalhar com o contrato

1. Instale um ambiente Solidity (por exemplo, Foundry ou Hardhat).
2. Garanta que o caminho `@openzeppelin/` seja reconhecido como dependência (em Hardhat, mantenha a pasta na raiz; em Foundry, adicione uma remapping `@openzeppelin/=./@openzeppelin/`).
3. Compile o contrato:
   - Foundry: `forge build`
   - Hardhat: `npx hardhat compile`

### Verificação pública no PolygonScan

1. Confirme que o `metadata.json` está na raiz do projeto (já incluído neste repositório público).
2. Gere o arquivo no formato "Standard-Input-Json" com os fontes embutidos:
   ```bash
   python scripts/generate_polygonscan_input.py
   ```
3. O script cria `polygon-verify/ForjaElo-polygonscan-standard-input.json` com todos os arquivos inline.
4. No PolygonScan, escolha **Standard JSON-Input**, selecione esse arquivo e use a versão do compilador `v0.8.30+commit.73712a01`.

---

## 🔒 Segurança e transparência

- Contrato baseado em OpenZeppelin (battle-tested).
- Supply fixo de 777.000.000 FRJ, sem função adicional de mint.
- Tesouraria protegida por Gnosis Safe (multi-sig).
- Documentação pública para facilitar auditorias e listagens em corretoras.

Consulte também:
- [Relatório de auditoria](./docs/AUDIT_REPORT.md)
- [Security Policy](./docs/SECURITY_POLICY.md)
- [Contato](./docs/CONTATO.md)

## 📬 Suporte e contatos oficiais

- **Suporte ao cliente (principal):** `suporte@forjaelo.com.br` — canal preferencial para dúvidas de usuários finais, corretores e parceiros, incluindo validações de listagem e reportes de segurança.
- **Comunicação institucional:** `andresampaio624@gmail.com` — contato histórico mantido para continuidade.

## 🛡️ Conformidade e veracidade

- Compilação alinhada ao metadado público: Solidity **v0.8.30+commit.73712a01** (mesma versão registrada em `metadata.json`).
- Dossiê do framework dos 7 Elos acessível apenas via [gist oficial](https://gist.github.com/andresampaio624/931df060cdd5d29693c1e95169abf0a1) para verificação controlada.
- Todos os arquivos necessários para verificação em corretoras estão neste repositório: contrato fonte, metadados Sourcify, artefato padrão do PolygonScan e políticas de segurança.
- Licenciamento MIT explícito e consistente com o repositório do framework (sem dependências proprietárias ocultas).

---

## Licença

Distribuído sob a [MIT License](./LICENSE). Consulte o arquivo para mais detalhes.
