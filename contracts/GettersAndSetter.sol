// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;


contract GettersAndSetter {
   
   string private message = "Hello World";

   function getMessage() public returns(string memory) {
       return message;
   }

   function setMessage(string memory newMessage) public {
       message = newMessage;
   }
}
