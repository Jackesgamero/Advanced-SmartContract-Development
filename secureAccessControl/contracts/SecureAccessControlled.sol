//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AccessControl {
    event AddRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);

    address public immutable owner;
    mapping(bytes32 => mapping(address => bool)) public roles;

    bytes32 private constant ADMIN = keccak256(abi.encodePacked("ADMIN"));
    bytes32 private constant USER = keccak256(abi.encodePacked("USER"));

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier onlyAdmin() {
        require(roles[ADMIN][msg.sender], "not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function _addAdmin(bytes32 _role, address _account) internal {
        roles[_role][_account] = true;
        emit AddRole(_role, _account);
    }

    function addAdmin(bytes32 _role, address _account) external onlyOwner {
        _addAdmin(_role, _account);
    }

    function removeAdmin(bytes32 _role, address _account) external onlyOwner {
        roles[_role][_account] = false;
        emit RevokeRole(_role, _account);
    }
}
