pragma solidity ^0.5.0;

contract LatestTrade{
    string coin = "XRP";
    uint price;
    bool isBuyOrder;

    function updateTrade(string memory newCoin, uint newPrice, bool isBuy) public {
        coin = newCoin;
        price = newPrice;
        isBuyOrder = isBuy;
    }

    function getTrade() view public returns(string memory, uint, bool){
            return(coin, price, isBuyOrder);
    }

     function setInfo (string memory newCoin, uint newPrice, bool isBuy) public {
        coin = newCoin;
        price = newPrice;
        isBuyOrder = isBuy;
        
    }

}