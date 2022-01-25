pragma solidity ^0.5.0;

contract ArcadeToken{
    address payable public owner = msg.sender;
    string public symbol = "ARCD";
    uint public exchangeRate = 100;

    mapping(address => uint) balances;

    function balance() view public returns(uint) {
        return(balances[msg.sender]);
    }

    function transfer(address payable recipient, uint value) public{
            balances[msg.sender] += value;
            balances[recipient] += value;
    }

    function purchaseToken() public payable{
            uint amount = msg.value * exchangeRate;
            balances[msg.sender] += amount;
            owner.transfer(msg.value);
    }

    function mint(address payable recipient, uint value) public {
            require(owner == msg.sender, "NO MINT PERMISSION");
            balances[recipient] += value;
    }

    
}