// contracts/czfBeltBnb.sol
/* SPDX-License-Identifier: GPL-3.0
Authored by IT Mandalorians
Thanks Plastic for this opportunity !!
*/

//This contract allows beltBnb to be exchanged 1:1 for czfBeltBnb.
//BELT rewards harvested will be transferred to a CZF->BELT pool.
//By also adding a CZF/BNB farm to app.czodiac.com, the circle is complete. BELT can be earned and reinvested without causing any dumps on either CZF or BELT and thus being beneficial to both.

/* Useful values:
BSC beltBNB: 0xa8bb71facdd46445644c277f9499dd22f6f0a30c
BSC beltFarm: 0xd4bbc80b9b102b77b21a06cb77e954049605e6c1
BSC BELT: 0xe0e514c71282b6f4e823703a39374cf58dc3ea4f
beltBNB _pid on beltFarm: 6
*/

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract czfBeltBnb is ERC20, Ownable, ReentrancyGuard {
    
    constructor(uint256 initialSupply) ERC20("czf-BeltBnb LP", "czfBeltBnbT") {
        _mint(msg.sender, initialSupply);
    }

// Accepts msg.value BNB then:
// 1) converts msg.value to beltBnb wad using beltBnb contract
// 2) Stakes the beltBNB in the beltFarm 
// 3) mints czfBeltBnb to _for with the value of beltBnb wad received.
//function depositBNB(address _for) public payable;

// 1) Unstakes _wad beltBnb from beltFarm
// 2) Transfers _wad beltBnb from msg.sender
// 3) Mints _wad of czfBeltBnb to _for
//NOTE: This contract must be approved for beltBNB first.
//function deposit(address _for, uint _wad) public;

//1) Burns _wad czfBeltBnb from msg.sender.
//2) Unstakes _wad beltBnb from beltFarm
//3) Converts _wad beltBnb from self to BNB using beltBnb contract
//4) Transfers the received BNB to _for.
//function withdrawBNB(address _for, uint _wad) public nonReentrant;

//1) Burns _wad czfBeltBnb from msg.sender.
//2) Unstakes _wad beltBnb from beltFarm
//3) Transfers _wad beltBNB from self to _for.
//NOTE: This contract must be approved for czfBeltBnb first.
//function withdraw(address _for, uint _wad) public;

//1) Harvests BELT from beltFarm.
//2) Transfers all BELT in this contract to _pool
//NOTE: This can only be called by owner.
//function harvest(address _pool) public onlyOwner;

}