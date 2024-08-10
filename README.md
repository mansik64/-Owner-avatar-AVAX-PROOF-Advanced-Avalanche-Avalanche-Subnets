## TREASURE VAULT - GAME TOKEN 
The TreasureVault contract enables players to mine gold, engage in battles, and trade gold for gems. It tracks players' mining activities, gold, and gem balances. Players can redeem cards of various rarities using gems, with each card requiring a different amount of gems. The contract uses GoldToken and GemToken for in-game transactions, and includes functions for starting mining, claiming rewards, trading gold for gems, and transferring gems. The contract owner is responsible for token management and initial setup.

## Contracts Overview
1. GEMTOKEN:- The `GemToken` contract is a custom ERC20 token with burnable functionality. Here’s a brief overview:

1. **Inheritance**:
   - It inherits from OpenZeppelin's `ERC20` contract and implements the `IERC20Burnable` interface, allowing it to function as a standard ERC20 token with additional burning capabilities.

2. **Constructor**:
   - Initializes the token with the name "Gem" and symbol "GM".
   - Mints an initial supply of 1,000,000,000 (10^18) tokens to the contract deployer’s address.

3. **Decimals**:
   - Overrides the `decimals` function to return `0`, indicating the token does not use decimal places (i.e., each token is indivisible).

4. **Burn Function**:
   - Implements the `burn` function from `IERC20Burnable`, allowing specified amounts of tokens to be burned (i.e., removed from circulation) from a given account.

This contract sets up a basic ERC20 token with functionality to handle burning of tokens, which is useful for mechanisms like card redemptions in your blockchain game.

2. GOLDTOKEN: - The `GoldToken` contract is a custom ERC20 token with burnable functionality, similar to the `GemToken`. Here’s an overview:

1. **Inheritance**:
   - It inherits from OpenZeppelin's `ERC20` contract and implements the `IERC20Burnable` interface, providing standard ERC20 features along with token burning capabilities.

2. **Constructor**:
   - Sets the token’s name to "Gold" and symbol to "GLD".
   - Mints an initial supply of 1,000,000,000 (10^18) tokens to the deployer's address.

3. **Decimals**:
   - Overrides the `decimals` function to return `0`, meaning the token has no fractional units (each token is indivisible).

4. **Burn Function**:
   - Implements the `burn` function from the `IERC20Burnable` interface, allowing the destruction (burning) of a specified amount of tokens from a given account.

This contract creates an ERC20 token used as a currency in your blockchain game, with the ability to burn tokens as needed.


### Getting Started

Prerequisites:
Avalanche subnet deployed and wallet imported in metamask.
Deployment:
Compile and deployment of contracts:

1. Deploy your avalanche subnet.
2. open remix IDE.
3. create new folder GameToken.
4. copy and paste GameToken.sol, Token.sol, Vault.sol into it.
5. Compile all three contracts and switch to avalance subnet network in metamask.
6. Select Injected metamask and deploy Vault and Token contracts individually then using its address deploy vault contract. deploy all 3 using the same wallet account.


#### Interaction
1. Open the deployed contracts in remix IDE.
2. Select the deployed contract and click on the "Use" button.
3. Click on the "Deploy" button to deploy the contract.
4. Click on the "At Address" button to interact with the deployed contract.


>> The interaction between the GameToken and Vault contracts can be summarized as follows:
The `GemToken` and `GoldToken` contracts interact in the `TreasureVault` contract. Here's a step-by-step overview of their interactions:

1. **Minting and Initial Setup**:
   - Both `GemToken` and `GoldToken` contracts are deployed with an initial supply minted to the deployer's address.

2. **Trading Gold for Gems**:
   - In the `TreasureVault` contract, players can trade `GoldToken` for `GemToken`.
   - Players stake `GoldToken`, and the `TreasureVault` contract transfers `GoldToken` from the player to itself.
   - The `TreasureVault` contract then calculates how many `GemToken` the player should receive (usually based on a predefined conversion rate) and transfers these tokens to the player.

3. **Burning Gems**:
   - Players can redeem various card rarities by burning `GemToken` through the `redeemCard` function.
   - The `TreasureVault` contract calls the `burn` function on the `GemToken` contract to destroy a specific amount of `GemToken` from the player’s balance based on the rarity of the card they are redeeming.

4. **Transferring Gems**:
   - Players can transfer `GemToken` to other players using the `transferGems` function.
   - The `TreasureVault` contract facilitates the transfer by interacting with the `GemToken` contract to execute the transfer.

5. **Burning Gold**:
   - Though not explicitly shown in the `TreasureVault` contract, if implemented, similar mechanisms could allow the burning of `GoldToken` for certain in-game actions or exchanges.

These interactions ensure that the tokens are used for various in-game functionalities, such as trading, redeeming items, and transferring between players.


#### Author
Mansi Shukla - Chandigarh University BE-C.S.E Students

#### License
This contract is licensed under the MIT License
