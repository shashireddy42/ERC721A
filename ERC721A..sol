// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "erc721a/contracts/ERC721A.sol";
contract SOV is ERC721A {
  constructor() ERC721A("SOV TECH", "SOV") {}
  uint256 mintlimit=20;
  uint256 max_suuply=10000;
  uint256 mint_rate=1;
  string public uri="ipfs//:QmaD87rtPQj9JoPY37mhUFN22UhxwWD89RnPDzCFbxG9cs";
  function mint(uint256 quantity) external payable {
    require(mintlimit<=20,"mint limit excessed");
    require(msg.value>=quantity*mint_rate,"mint rate excessed");
    _safeMint(msg.sender, quantity);
  }
}
