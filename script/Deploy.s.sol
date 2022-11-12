//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/FuckFTX.sol";

contract Deploy is Script {
    FuckFTX public fuckFTX;
    
    function run() public {
        
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        fuckFTX = new FuckFTX();
        
        vm.stopBroadcast();
    }
}
