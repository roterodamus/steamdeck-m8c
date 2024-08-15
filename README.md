# steamdeck-m8c

This repository contains simple scripts for installing m8c on the Steam Deck.

## Check if Audio Fix is Needed

1. In **Gaming Mode**, navigate to **Settings** > **Audio** and select **Speakers** as the **Output Device** (not **Default**)
2. Make sure **Enable UI Sounds** is enabled, and your volume is up.
3. Move around in the menu.
4. If you still hear sound, you can skip step 6 of the installation instructions.

## Installation Instructions

1. **In Desktop Mode, open Konsole and set a password on your Steam Deck**  
   (Skip this step if you have already set a password.)
   ```bash
   passwd
   ```

2. **Download the steamdeck-m8c repository and change directory**  
   ```bash
   git clone https://github.com/roterodamus/steamdeck-m8c.git
   cd steamdeck-m8c/
   ```

3. **Make scripts executable**  
   ```bash
   chmod +x download-m8c-latest.sh
   chmod +x install-libserialport.sh
   chmod +x steamdeck-audiofix.sh
   ```

4. **Download and unzip the latest m8c from the Laamaa/m8c repository**  
   ```bash
   ./download-m8c-latest.sh
   ```

5. **Install libserialport**  
   ```bash
   ./install-libserialport.sh
   ```

6. **Apply Audio Fix (Only if Needed)**  
   ```bash
   ./steamdeck-audiofix.sh
   ```
7. **Reboot. All done!**


## A very special thanks to:

- Trash80 - [Dirtywave](https://dirtywave.com/)
- Laamaa - [M8C](https://github.com/laamaa/m8c)
- and the entire FOSS Linux community.

   

