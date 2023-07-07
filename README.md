# securityssh
The Server Login Script enhances server security by prompting users for a unique code during login. Incorrect codes result in automatic IP blocking.


Certainly! Here's a sample description for the code:

---

# Server Login Script

The Server Login Script is a simple script designed to enhance server security by implementing a server code verification process upon user login. It prompts users to enter a server code during their initial login attempt. If the entered code matches the predefined server code, the user is granted access to the server terminal. However, if the code is incorrect, the user's IP address is automatically blocked to prevent unauthorized access.

## Features

- Enhanced security: By implementing a server code verification process, the script adds an extra layer of security to the server login procedure.
- Automatic IP blocking: If a user enters an incorrect server code, the script blocks their IP address using the `ufw` firewall utility.
- Simple and lightweight: The script is designed to be lightweight and easy to understand, with minimal dependencies and resource usage.
- Customizable: The script can be modified to use a different server code or incorporate additional security measures as needed.

## Usage

1. Upon the user's first login attempt, the script prompts them to enter the server code.
2. If the entered code matches the predefined server code (`22443808080`), the user is granted access to the server terminal.
3. If the entered code is incorrect, the user's IP address is automatically blocked using the `ufw` firewall utility, and they receive an error message.
4. Subsequent login attempts do not trigger the server code prompt, allowing users with correct credentials to log in without interruption.

Please note that this script assumes the presence of the `ufw` firewall utility and requires appropriate permissions to block IP addresses.

---

Feel free to adjust the description based on your specific use case and any additional features or functionality you've implemented in your code.
