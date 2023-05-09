```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.6.8;

contract Base {
    uint256 data;

    constructor(uint256 _data) public {
        data = _data;
    }

    function getData() public view returns (uint256) {
        return data;
    }
}

contract Derived is Base {
    uint256 data2;

    constructor(uint256 _info) public Base(_info * _info) {
        data2 = _info;
    }

    function getDataBase() public view returns (uint256) {
        return super.getData();
    }
}
```

=> VD: deploy Derived với value là 10, data2 của Derived là 10, còn data của Base là 100, nên khi getDataBase sẽ là 100.
