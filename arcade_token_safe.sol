pragma solidity ^0.5.0;
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/math/SafeMath.sol";

contract ArcadeToken{
    using SafeMath for uint;

    address payable public owner = msg.sender;
    string public symbol = "ARCD";
    uint public exchangeRate = 100;

    mapping(address => uint) balances;

    function balance() view public returns(uint) {
        return(balances[msg.sender]);
    }

    function transfer(address payable recipient, uint value) public{
            balances[msg.sender] = balances[msg.sender].sub(value);
            balances[recipient] = balances[recipient].add(value);
    }

    function purchaseToken() public payable{
            uint amount = msg.value.mul(exchangeRate);
            balances[msg.sender] = balances[msg.sender].add(amount);
            owner.transfer(msg.value);
    }

    function mint(address payable recipient, uint value) public {
            require(owner == msg.sender, "NO MINT PERMISSION");
            balances[recipient] = balances[recipient].add(value);
    }

    
}