pragma ton-solidity ^0.51.0;
pragma AbiHeader expire; 

import "./Ownable.sol";

contract Game is Ownabe {
    struct Gamer {
        uint addr;
        uint balance;
    }

    Gamer[] public _gamers;

    function NewGamer() {
        require(msg.value >= 1000000000);
        _gamers.puch(Gamer(msg.address, msg.value - 1000000000));
    }
}