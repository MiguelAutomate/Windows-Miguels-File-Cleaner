# Miguel's File Cleaner

Miguel's File Cleaner is a batch script designed for Windows 11 systems to remove temporary files, free up disk space, and improve overall system performance. It cleans various system directories, including temporary folders, cache directories, and the Recycle Bin.

## Features

- **Administrative Privileges Check:** Ensures the script is run with the necessary permissions.
- **User Confirmation:** Prompts the user before proceeding with the cleaning process.
- **Comprehensive Cleaning:** Targets multiple directories such as:
  - Windows Temp folder
  - User Temp folder
  - Prefetch folder
  - Internet Explorer and Edge temporary files
  - Recent files
  - Windows Update cache
  - System error memory dump files
- **Recycle Bin Clearance:** Empties the Recycle Bin to free up additional space.
- **Logging:** Generates a log file (`FileCleaner.log`) in the script's directory detailing the cleaning process.

## Usage

1. **Download the Script:** [Provide a link to the script or repository here]
2. **Run as Administrator:** Right-click on the script file and select "Run as administrator" to ensure it has the necessary permissions.
3. **User Confirmation:** The script will prompt you to confirm before proceeding. Enter 'Y' to continue or any other key to cancel.
4. **Cleaning Process:** The script will clean the specified directories and empty the Recycle Bin. Progress and any issues encountered will be logged in `FileCleaner.log`.
5. **Completion:** Once the process is complete, a message will display indicating the cleaning is finished, and the log file location will be provided.

## Important Notes

- **Administrative Rights:** The script requires administrative privileges to function correctly. Ensure you run it as an administrator.
- **Caution:** While the script targets common temporary file locations, always review the code and understand its actions before running it on your system.
- **Logging:** The script creates a log file (`FileCleaner.log`) in the same directory as the script, detailing the cleaning actions taken. Review this log for any errors or skipped directories.

## License

[Specify the license under which you're releasing the script, e.g., MIT License. Provide a link to the license file if applicable.]

## Disclaimer

This script is provided "as is" without any warranties. Use it at your own risk. The author is not responsible for any potential issues or data loss resulting from its use.

---

*For any issues or suggestions, please open an issue in this repository.*
