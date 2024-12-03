# Leaf Bot Project

![Leaf Bot](https://i.pinimg.com/originals/70/55/c9/7055c99bad359a99e95a9a0bf4849a77.gif)

## Overview

**Leaf Bot** is an advanced and interactive Roblox bot designed to provide custom features, whitelist management, and multiple utilities for admins and whitelisted players. It works seamlessly within both **SFOTH** and **SFOTH IV**, offering powerful commands, role management, and immersive interactions for those who are whitelisted.

This bot includes a robust command structure, role management, and specialized abilities, like invisibility, invincibility, and teleportation. It also features a unique system for handling whitelisted players and even allows admins to assign special roles for those who meet specific requirements.

---

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Installation and Setup](#installation-and-setup)
4. [Command Reference](#command-reference)
5. [Configuration](#configuration)
6. [License](#license)
7. [Credits](#credits)
8. [Contributing](#contributing)

---

## Introduction

Leaf Bot works seamlessly with **SFOth** and **SFOth IV**, making it an essential tool for both of these games. Whether you're playing as an admin, whitelisted player, or simply looking for additional features, Leaf Bot has everything you need to enhance your experience.

In these games, the bot supports:
- **Whitelist Versions**: V1 and V2, each offering different commands and abilities.
- **Special Roles**: Unlocks exclusive features when you combine both whitelist versions.
- **Customizable Commands**: Includes teleportation, aura activation, invincibility, and more.

The bot can be executed and configured specifically for either **SFOth** or **SFOth IV**, ensuring full compatibility with the game you're playing.

---

## Features

- **Custom Role Management**: Support for multiple whitelist versions (V1 and V2) and a Special Role for users who combine both.
- **Commands**: A comprehensive list of commands for interacting with the bot, including teleportation, aura activation, and chat-based features.
- **Interactive Bot**: Asks users questions and provides feedback based on their responses, including quizzes and role-specific features.
- **Configuration**: Easily configurable constants for customizing roles, bot owner, and other behaviors.
- **Seamless Integration**: Works smoothly with Roblox's native event and command systems for both administrators and whitelisted players.
- **Special Features**: Invisibility, invincibility, immunity for listeners, custom shield commands, and more.

---

## Installation and Setup

### Prerequisites

1. **Roblox Studio**: You need Roblox Studio to add the bot to your game.
2. **Roblox API Access**: Ensure you have proper permissions to modify the game and access player data for roles.
3. **Game Specific Adjustments**: Make sure that you have configured the bot to work specifically with **SFOth** and **SFOth IV** as both games may have different event and command handling.

### Setup Instructions

1. **Clone the repository**:
   - Clone the Leaf Bot repository into your Roblox game project folder.
   - Ensure all scripts and assets are properly imported into the game.

2. **Configure the bot**:
   - Open the script and adjust the configuration constants:
     - `LEAF_OWNER_NAME`: Your Roblox username.
     - `V1_ROLE_NAME`, `V2_ROLE_NAME`, `SPECIAL_ROLE_NAME`: Adjust role names based on your game's whitelist system.
   
3. **Testing**:
   - Test the commands in Roblox Studio by interacting with the Leaf Bot via chat.
   - Make sure to test special features like teleportation, aura activation, and whitelist status.

---

## Command Reference

### `!LeafAura`
Activates a green aura around the player, representing the power of Leaf.

**Usage**:  
```plaintext
!LeafAura

!LeafTeleport <PlayerName>

Teleports you to the specified player in-game.

Usage:

!LeafTeleport PlayerName

!LeafStats

Displays the statistics of the bot, including the number of players in each whitelist group (V1, V2, and Special Role).

Usage:

!LeafStats

!LeafCreds

Shows credits for the bot and its creator.

Usage:

!LeafCreds

!LeafListener

Special commands for bot listeners, allowing them to trigger additional functions like spam chat or enabling invincibility.

Usage:

!LeafListener

!Combine

Combines V1 and V2 whitelist roles to give the player the Special Role.

Usage:

!Combine

!LeafRoles

Displays a list of all whitelisted players and their roles.

Usage:

!LeafRoles

!LeafConfig

Explains how to configure and use the bot’s constants and settings.

Usage:

!LeafConfig

!LeafCreds

Displays information about Leaf Corp and credits for creating the script.

Usage:

!LeafCreds

!LeafListenerCommands

Displays all available commands for the bot listeners and explains how they can interact with the bot for spam and invisibility features.

Usage:

!LeafListenerCommands


---

Configuration

The bot is highly customizable through the configuration constants defined in the script. Here are the most important constants to configure:

LEAF_OWNER_NAME: The username of the owner. This allows the bot to recognize the admin and provide special access.

V1_ROLE_NAME: Name for the first whitelist version.

V2_ROLE_NAME: Name for the second whitelist version.

SPECIAL_ROLE_NAME: Name for the combined special role that gives access to exclusive features.


To configure these, simply edit the constants in the script to match your desired settings.


---

License

This project is licensed under the MIT License.


---

Credits

Creator: LeafCorp (Discord: LeafCorp)

Contributors: Anyone who helps improve the bot.



---

Contributing

If you'd like to contribute to this project, feel free to fork the repository, make your changes, and create a pull request. We welcome all contributions to improve the bot!


---

Leaf Bot Made by LeafCorp 🍃


---

This `README.md` contains:
- Overview of the Leaf Bot project.
- Detailed list of commands with usage examples.
- Installation and setup instructions.
- Customization and configuration guidelines.
- Licensing information.
- Credits and contributing section for community involvement.

This structure is clear, professional, and informative for anyone looking to integrate or use the bot in their Roblox game.

