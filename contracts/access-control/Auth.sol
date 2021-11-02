// SPDX-License-Identifier: MIT 
pragma solidity >=0.5.0 <0.9.0;

// Import Auth from the access-control subdirectory
import "contracts/access-control/Auth.sol";

contract Auth{
    address private _administrator;

    constructor(address deployer) {
        // Make the deployer of the contract the administrator
        _administrator = deployer;
    }

    function isAdministrator(address user) public view returns (bool) {
        return user == _administrator;
    }
}