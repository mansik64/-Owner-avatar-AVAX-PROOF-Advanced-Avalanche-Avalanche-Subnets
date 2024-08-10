// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20Burnable {
    function burn(uint amount, address account) external;
}