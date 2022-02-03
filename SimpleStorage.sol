// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0<0.9.0;

contract SimpleStorage {

  //initilaze to 0
   uint256  favoriteNumber;
   /*bool favouriteBool =false;
   string favoriteString ="Zaa";
   int256 favoriteNum =-5;
   address favoriteAddress =0xC32e311B639c1d1F526506e8a00278a4eFA0B8cC;
   bytes32 favoriteBytes ="cat";*/


    struct People{
        uint256  favoriteNumber;
        string name ;
    }

    //People public person =People({favoriteNumber:2,name:"Dogu"});
    People[] public person ;
    mapping(string=>uint256) public nameToFavNum;

     //memory calısırken tutuluyor storage kalıcı
     // bu durumda memory
    function addPerson(string memory _name,uint256  _favoriteNumber) public {
              // person.push(People({favoriteNumber:_favoriteNumber,name:_name}));

              person.push(People(_favoriteNumber,_name));
              nameToFavNum[_name]=_favoriteNumber;
    }

   function store(uint256 _favoriteNumber) public{

       favoriteNumber=_favoriteNumber;
   }
     //view pure pure stat change ediyor 
   function retrieve()public view returns(uint256){
       return favoriteNumber;
   }

}
