//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.9;

contract DAOConfig {

  /*
    * stock owner is the owner of the stock
    */
  struct structStockOwner {
    address ownerAddress;
    uint256 stockOnwerIndex;
    string ownerName;
    string emailAddress;
    string website;
  }


  /*
    * stock is the stock that is being traded
    */
  struct StockProperty {
    string stockName;
    string stockSymbol;
    uint256 stockIndex;
    uint256 stockTotalSupply;
    uint256 stockVoteWeight;
    uint256 stockDividendWeight;
    uint256 stockTransactionCooldown;
    bool isStockDilutable;
    bool isStockMintable;
    bool isStockBurnable;
    bool isStockTransferable;
    uint256 stockMaximumSupply;
  }

  /*
    * basic information about the DAO
    */
  uint256 constant fastDAOVersion = 1;  
  string constant fastDAOName = "FastDAO";
  string constant fastDAODescription = "A DAO for the Ethereum blockchain";
  string constant fastDAOWebsite = "http://foo.bar";
  string constant fastDAOEmail = "fast@dao.com"; 
  string constant fastDAOLogoURL = "http://foo.bar/logo.png";


  /*
   stock owner information
   */
  string[] public stockOwnerNames = ["Peter Wang","Julia Smiths"];
  uint256[] public stockOwnerIndexes = [1,2];
  address[] public stockOwnerAddresses = [
    0x0000000000000000000000000000000000000000,
    0x0000000000000000000000000000000000000000
    ];
  string[] public stockOwnerEmailAddresses = ["peter@gmail.com","julia@gmail.com"];
  string[] public stockOwnerWebsites = ["www.peter.com","www.julia.com"];
  uint256 public stockOwnerCount = 2;
  
  /*
   stock information
   */
  string[] public stockNames = ["FastDao Inc. Stock Type 1","FastDao Inc. Stock Type 2"];
  string[] public stockSymbols = ["FDST1","FDST2"];
  uint256[] public stockIndices = [1,2];
  uint256[] public stockTotalSupplies = [100,1000];
  uint256[] public stockVoteWeights = [100,1];
  uint256[] public stockDividendWeights = [10,1];
  uint256[] public stockTransactionCooldowns = [1,1];
  bool[] public stockIsDilutable = [true,true];
  bool[] public stockIsMintable = [true,true];
  bool[] public stockIsBurnable = [true,true];
  bool[] public stockIsTransferable = [true,true];
  uint256[] public stockMaximumSupplies = [1000,1000];
  uint256 public stockCount = 2;
  
  /*
   * DAO CEO information and configuration 
   */
  address public managerAddress = 0x0000000000000000000000000000000000000000;
  bool isManagerReplacementAllowed = true;
  uint256 maximumAmountOfTransactionPerDay = 10;
  uint256 maximumAmountOfTransactionPerYear = 300;
  uint256 maximumValueOfEachTransaction = 200;
  uint256 maximumValueOfTransactionPerDay = 20;
  uint256 maximumValueOfTransactionPerYear = 2000;
  uint256 maximumValueOfDividendUnitPerYear = 2;
  enum TransactionType {
    TRANSACTION_TYPE_TRANSFER,
    TRANSACTION_TYPE_DIVIDEND,
    TRANSACTION_TYPE_VOTE,
    TRANSACTION_TYPE_MINT,
    TRANSACTION_TYPE_BURN,
    TRANSACTION_TYPE_PURCHASE,
    TRANSACTION_TYPE_UNKNOWN
  }

  


  /*
    * DAO opeartion configurations
    */
  
  

}
