// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./PriceFeed.sol";

contract PriceSummary {
    function setLatestAnswers(
        int256 _answerETH,
        int256 _answerBTC,
        int256 _answerLINK,
        int256 _answerUSDC,
        int256 answerBIT
    ) public {
        PriceFeed(address(0x143FD780BDbC43441b099a3F6E63933988B5A657))
            .setLatestAnswer(_answerETH);
        PriceFeed(address(0x438EC8Fb9583AeC39FdEe599d1086C5d885e6Cfb))
            .setLatestAnswer(_answerBTC);
        PriceFeed(address(0xF5aC2652Ab772b55eD181657b2C7c5144a370147))
            .setLatestAnswer(_answerLINK);
        PriceFeed(address(0x062AaAB8C5006CFDAc5fFc1CA660A72Dd39AC574))
            .setLatestAnswer(_answerUSDC);
        PriceFeed(address(0xfd977d0c119Feb95eEbAC66AaE13B3485C020Fe0))
            .setLatestAnswer(answerBIT);
    }
}
