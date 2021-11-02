// SPDX-License-Identifier: MIT 
pragma solidity >=0.5.0 <0.9.0;

contract Box {
    uint256 private _value;

    // Emitted when the stored value changes
    event ValueChanged(uint256 value);

    // Store a new value in the contractj
    function store(uint256 value) public {
        _value = value;
        emit ValueChanged(value);
    }

    // Reads the last stored value
    function retrive() public view returns (uint256) {
        return _value;
    }
}
