// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.28;

import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract Deploynft is Script{
    function run() external returns(BasicNft){
        vm.startBroadcast();
        BasicNft basicnft= new BasicNft();
        vm.stopBroadcast();
        return basicnft;
    }
}