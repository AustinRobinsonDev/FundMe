// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    // FundMe fundMe;
    address priceFeed = 0x694AA1769357215DE4FAC081bf1f309aDC325306;

    function run() external {
        vm.startBroadcast();
        new FundMe(priceFeed);
        vm.stopBroadcast();
    }
}