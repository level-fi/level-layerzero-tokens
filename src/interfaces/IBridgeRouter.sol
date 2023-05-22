// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.18;

struct ReceiveInfo {
    address to;
    uint256 amount;
}

interface IBridgeRouter {
    function addReceiveInfo(uint16 _srcChainId, bytes memory _srcAddress, uint64 _nonce, address _to, uint256 _amount)
        external;

    function addBurnInfo(uint16 _srcChainId, bytes memory _srcAddress, uint64 _nonce, uint256 _amount) external;
}
