// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint) addressWaveCount;

    constructor() {
        console.log("WavePortal constructor hit!");
    }

    function wave() public {
        totalWaves += 1;
        addressWaveCount[msg.sender]++;
        console.log("%s waved and has a total of %d waves!", msg.sender, addressWaveCount[msg.sender]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}