pragma solidity ^0.5.0;

contract LatestTrade {
    // variables here are global for entire contract
    string coin = "BTC"; 
    uint price;
    bool isBuyOrder;

    function updateTrade(string memory newCoin, uint newPrice, bool isBuy)public{
        coin = newCoin;
        price = newPrice;
        isBuyOrder = isBuy; 
        
    }

    function getLatestTrade() view public returns(string memory, uint, bool){
            return(coin, price, isBuyOrder);
    }
}

