// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import {OpenNFT} from "../src/OpenNFT.sol";

contract DeployOpenNFT is Script { 
    function run() external {
        vm.startBroadcast();
        
        // 部署合约
        OpenNFT nft = new OpenNFT();
        
        // 打印合约地址
        console.log("OpenspaceNFT deployed to:", address(nft));
        
        vm.stopBroadcast();
    }
}
