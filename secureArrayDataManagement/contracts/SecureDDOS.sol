//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SecureDDOS {
    uint256[] public data;

    function addToData(uint256[] memory values) public {
        require(values.length <= 100, "Exceeds gas limit");

        for (uint256 i = 0; i < values.length; i++) {
            data.push(values[i]);
        }
    }
}
