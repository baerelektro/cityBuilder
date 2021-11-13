pragma ton-solidity ^0.51.0;
pragma AbiHeader expire; 

import "./Ownable.sol";

contract Game is Ownabe {
    // Структура игроков
    struct Gamer {
        uint balance;
    }
    // Массив игроков
    Gamer[] public _gamers;
    //Соответствие адреса индексу в массиве
    mapping (address  => uint) public gamerToOwner ;
    //Создание игрока
    function NewGamer() public returns(uint){
        //Игрок платит один кристал за вход в игру
        require(msg.value >= 1000000000);
        _gamers.puch(Gamer(msg.value - 1000000000));
        uint id = _gamers.length - 1;
        //записываем индекс игрока в адресную книгу 
        gamerToOwner[msg.sender] = id;
        return id;
    }

}