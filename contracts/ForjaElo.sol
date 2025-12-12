// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title ForjaElo Token (FRJ)
 * @dev Token ERC-20 do Framework dos 7 Elos
 * 
 * Simbolismo:
 * - Total Supply: 777.000.000 FRJ (representa os 7 Elos)
 * - Sem mint adicional (supply fixo)
 * - Todos tokens mintados para o deployer no construtor
 * 
 * Distribuição (gerenciada off-chain após deploy):
 * - Comunidade: 35% (271.950.000 FRJ)
 * - Desenvolvimento: 20% (155.400.000 FRJ)
 * - Liquidez: 15% (116.550.000 FRJ)
 * - Tesouraria: 15% (116.550.000 FRJ)
 * - Marketing: 10% (77.700.000 FRJ)
 * - Airdrop: 5% (38.850.000 FRJ)
 * 
 * Website: https://github.com/andresampaio624/ForjaElo-Framework-dos-7-Elos
 * Documentação: https://github.com/andresampaio624/ForjaElo-Token-FRJ
 */
contract ForjaElo is ERC20 {
    /**
     * @dev Constructor que minta todo o supply inicial para o deployer
     * Total Supply: 777.000.000 FRJ (777 milhões)
     */
    constructor() ERC20("ForjaElo", "FRJ") {
        // Minta 777 milhões de tokens para o deployer
        // 777000000 * 10^18 (18 decimais)
        _mint(msg.sender, 777000000 * 10 ** decimals());
    }
    
    /**
     * @dev Não há função de mint adicional
     * O supply é fixo em 777.000.000 FRJ
     */
}
