// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

/**
 * @title ForjaElo NFT Collection (FRJNFT)
 * @dev Coleção ERC-1155 representando os 7 Elos do Framework
 * 
 * Estrutura dos NFTs:
 * Token ID 1: 🔥 CHAMA - Elo Fundação (Propósito/Espírito)
 * Token ID 2: 🏞️ REFÚGIO - Elo Justiça (Alma/Liderança)
 * Token ID 3: ⚡ POTÊNCIA - Elo Força (Processo/Hábito)
 * Token ID 4: 🎯 CENTRAL - Elo Verdade (Autenticidade/Sistema)
 * Token ID 5: 🎨 TALENTO - Elo Valor (Domínio/Espaço)
 * Token ID 6: 🏃 ATLETA - Elo Corpo (Biologia/Forma)
 * Token ID 7: 💡 IDE - Elo Serviço (Química/Conexão)
 * 
 * Características:
 * - Supply limitado de 777 NFTs por tipo (simbolizando os 7 Elos)
 * - Metadados hospedados em IPFS
 * - Compatível com OpenSea e outros marketplaces
 * - Integração com token FRJ para utilidades futuras
 */
contract ForjaEloNFT is ERC1155, Ownable, ERC1155Supply {
    using Strings for uint256;

    // Nome da coleção
    string public name = "ForjaElo Collection";
    string public symbol = "FRJNFT";
    
    // Supply máximo por tipo de NFT (777 por Elo)
    uint256 public constant MAX_SUPPLY_PER_TYPE = 777;
    
    // Total de tipos de NFTs (7 Elos)
    uint256 public constant TOTAL_TYPES = 7;
    
    // Base URI para metadados
    string private _baseURI;
    
    // Mapeamento de cada Elo com suas características
    mapping(uint256 => string) public eloNames;
    mapping(uint256 => bool) public eloActive;
    
    // Eventos
    event EloMinted(address indexed to, uint256 indexed tokenId, uint256 amount);
    event BaseURIUpdated(string newBaseURI);
    
    /**
     * @dev Constructor inicializa a coleção com URI base
     * @param baseURI URI base para metadados IPFS
     */
    constructor(string memory baseURI) ERC1155(baseURI) {
        _baseURI = baseURI;
        
        // Inicializa os nomes dos Elos
        eloNames[1] = "CHAMA";
        eloNames[2] = "REFUGIO";
        eloNames[3] = "POTENCIA";
        eloNames[4] = "CENTRAL";
        eloNames[5] = "TALENTO";
        eloNames[6] = "ATLETA";
        eloNames[7] = "IDE";
        
        // Ativa todos os Elos
        for (uint256 i = 1; i <= TOTAL_TYPES; i++) {
            eloActive[i] = true;
        }
    }
    
    /**
     * @dev Retorna a URI de metadados para um token específico
     * @param tokenId ID do token
     */
    function uri(uint256 tokenId) public view virtual override returns (string memory) {
        require(tokenId > 0 && tokenId <= TOTAL_TYPES, "Token ID invalido");
        return string(abi.encodePacked(_baseURI, tokenId.toString(), ".json"));
    }
    
    /**
     * @dev Minta NFTs de um Elo específico
     * @param to Endereço destinatário
     * @param tokenId ID do Elo (1-7)
     * @param amount Quantidade a mintar
     */
    function mint(address to, uint256 tokenId, uint256 amount) public onlyOwner {
        require(tokenId > 0 && tokenId <= TOTAL_TYPES, "Token ID invalido");
        require(eloActive[tokenId], "Elo nao esta ativo");
        require(
            totalSupply(tokenId) + amount <= MAX_SUPPLY_PER_TYPE,
            "Supply maximo atingido para este Elo"
        );
        
        _mint(to, tokenId, amount, "");
        emit EloMinted(to, tokenId, amount);
    }
    
    /**
     * @dev Minta múltiplos tipos de NFTs de uma vez (batch)
     * @param to Endereço destinatário
     * @param tokenIds Array de IDs dos Elos
     * @param amounts Array de quantidades correspondentes
     */
    function mintBatch(address to, uint256[] memory tokenIds, uint256[] memory amounts) 
        public 
        onlyOwner 
    {
        require(tokenIds.length == amounts.length, "Arrays de tamanho diferente");
        
        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(tokenIds[i] > 0 && tokenIds[i] <= TOTAL_TYPES, "Token ID invalido");
            require(eloActive[tokenIds[i]], "Elo nao esta ativo");
            require(
                totalSupply(tokenIds[i]) + amounts[i] <= MAX_SUPPLY_PER_TYPE,
                "Supply maximo atingido"
            );
        }
        
        _mintBatch(to, tokenIds, amounts, "");
    }
    
    /**
     * @dev Atualiza a URI base para metadados
     * @param newBaseURI Nova URI base
     */
    function setBaseURI(string memory newBaseURI) public onlyOwner {
        _baseURI = newBaseURI;
        emit BaseURIUpdated(newBaseURI);
    }
    
    /**
     * @dev Ativa ou desativa um Elo específico
     * @param tokenId ID do Elo
     * @param active Status de ativação
     */
    function setEloActive(uint256 tokenId, bool active) public onlyOwner {
        require(tokenId > 0 && tokenId <= TOTAL_TYPES, "Token ID invalido");
        eloActive[tokenId] = active;
    }
    
    /**
     * @dev Retorna o supply restante para um tipo de NFT
     * @param tokenId ID do Elo
     */
    function remainingSupply(uint256 tokenId) public view returns (uint256) {
        require(tokenId > 0 && tokenId <= TOTAL_TYPES, "Token ID invalido");
        return MAX_SUPPLY_PER_TYPE - totalSupply(tokenId);
    }
    
    /**
     * @dev Override necessário para ERC1155Supply
     */
    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) internal override(ERC1155, ERC1155Supply) {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
}