// Look4App (c) 2017 - 2018
pragma solidity ^0.4.21;

import "./zeppelin/contracts/token/StandardToken.sol";

contract IvyKoinContract is StandardToken {
    string constant public name = "IvyKoin Public Network Tokens";
    uint8  constant public decimals = 18;
    string constant public symbol = "IVY";

    function IvyKoinContract() public {
        // here should be amount of tokens to be generated
        //                ▼▼▼▼▼▼▼▼▼▼
        totalSupply = /**/1610924200/**/ ether;

        // here should be valid address of treasury account
        //           ▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼
        balances[/**/0x2249E10c270697e5C19D63996b58DE0F78d88A47/**/] = totalSupply;
    }


    function approve(address _spender, uint256 _value) public returns (bool) {
        require(msg.sender != _spender);

        return super.approve(_spender, _value);
    }

    function transfer(address _to, uint256 _value) public returns (bool) {
        require(msg.sender != _to);

        return super.transfer(_to, _value);
    }

	/*
    function destroy() external onlyOwner {
        selfdestruct(msg.sender);
    }
	*/
}

