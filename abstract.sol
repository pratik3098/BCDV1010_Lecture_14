// SPDX-License-Identifier: Unidentified

pragma solidity ^0.8.0;

abstract contract Feline {
    function utterance() public virtual returns (bytes32);
}

abstract contract Cat is Feline {
    function isCat() public pure returns (bool){
        return true;
    }
}

contract Tiger is Cat {
    function utterance() public override  pure returns (bytes32) { return "miaow"; }

}