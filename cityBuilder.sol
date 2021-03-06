pragma ton-solidity ^0.51.0; //1. Здесь укажи версию Solidity

import "./Game.sol";

contract CityBuilder is Game {


// Количество продуктов в экосистеме
uint _numberOfProducts = 10;
// Максимальная разница обьёма ячеек склада в городе
uint _maxStorageDifference = 127;
// Минималёный размер ячейки склада
uint _minStorageValue = 128;

// Структура города с массивом склада
struct City {
    string _name;
    uint _cityId;
    // Массив объёмов ячеек хранения склада
    uint8[]  _Storages;
    // Массив количества товара на складе
    uint8[] _ProduktsValues;
}

City[] public _city;

function createCity(uint8 minStorageValue, uint8 maxDifference, uint8 numberOfProducts) public returns (uint)
    { 
        string name = "Test City";
        uint8 Id = 0;
        uint8[] Storages;
        uint8[] ProduktsValues; 
        // Создадим нужное количество  ячеек для товара и заполняем продуктом
        for (uint8 index = 0; index < numberOfProducts; index++) {
            
            rnd.shuffle();
            Storages[index] = minStorageValue  + rnd.next(maxDifference);
            ProduktsValues[index]  = rnd.next(255);
        }
         _city.push(City(name, Id, Storages, ProduktsValues));
    }

}

function GatBalance(address addr) internal returns(uint)
{
    id =  gamerToOwner[addr];
    return _gamers.ballance;
}

//  Функция перемещает игрока в город
function gamerToCity(uint gamerId, uint city id) public returns(uint)
{
   
}

// Функция купить товар
function bayProduct(unit productId, uint8 value) public returns(uint)
{

}

//Функция продать товар
function sellProduct(unit productId, uint8 value) public returns(uint)
{

}
