// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
//Deployed at = 0x41B6805b9e91bd46087E9bCEAA6141D16b4D567D

contract BasicNft is ERC721 {

uint256 private s_tokencounter;
mapping (uint256=>string) public s_tokenidtouri;

constructor() ERC721("Doggie","DOG"){
s_tokencounter=0;
}

function mintnft(string memory tokenUri) public {
    s_tokenidtouri[s_tokencounter]=tokenUri;
    _safeMint(msg.sender,s_tokencounter);
    s_tokencounter++;


}

function tokenURI(uint256 tokenID) public view override returns(string memory){
    return s_tokenidtouri[tokenID];
}
}