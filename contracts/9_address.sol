//SPDX-Lisences-Identifier: GPL-3.0
contract MyAddress{
    address public address1;
    mapping(address=>bool) whiteList;

    function changAddress() public payable returns(address ad) {
         ad.balance;
         address payable ads1 = payable (ad);
         ads1.transfer(1 ether);
         bool success = ads1.send(1 ether);
         require(success, "转账失败");
    }

    function checkWhite(address ad){
        return whitelist[ad];
    }

    function setWhite(address ad){
        whiteList[ad] = true
    }
}