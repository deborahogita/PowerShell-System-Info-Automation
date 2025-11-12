# PowerShell System Info Automation Script

## Description
This PowerShell script automates the process of collecting and exporting system information, such as:
- **Operating System Version**
- **Installed Software**
- **Disk Space Usage**
- **Network Adapter Information**

The script generates a CSV file with the collected data, which can be used for **system audits**, **reporting**, and **analysis**. The information can be exported to separate CSV files for each system component or combined into a single CSV file.

## Key Features
- Automates the collection of system information using PowerShell.
- Supports exporting data into **CSV files** for easy viewing and sharing.
- Can be scheduled for **automatic execution** using **Windows Task Scheduler**.
- Includes details on the **operating system**, **installed software**, **disk space**, and **network adapters**.

## How to Use
1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/PowerShell-System-Info-Automation.git
    ```
2. Open **PowerShell 7** (or Windows PowerShell) and navigate to the folder where the script is saved:
    ```powershell
    cd "C:\path\to\your\PowerShell-System-Info-Automation"
    ```
3. Run the script with the following command:
    ```powershell
    .\SystemInfo.ps1
    ```
4. The script will collect system information and export the data to the following files:
    - **SystemInfo.csv**: Contains information about the operating system.
    - **InstalledSoftware.csv**: Lists all installed software on the system.
    - **DiskSpace.csv**: Displays disk space usage and available space.
    - **NetworkInfo.csv**: Shows details about the network adapters.

## Sample Output
The script generates the following CSV files:
- **SystemInfo.csv**: Contains system information such as OS version and build.
- **InstalledSoftware.csv**: Lists installed software on the machine.
- **DiskSpace.csv**: Displays disk usage and available space for each disk.
- **NetworkInfo.csv**: Displays network adapter details and IP addresses.

You can view a **sample CSV file** [here](https://github.com/yourusername/PowerShell-System-Info-Automation/blob/main/SampleSystemInfo.csv).

## Customization
You can modify the script to:
- Change the **output file path** for the CSV files.
- Add or remove **system components** to collect (e.g., add information about CPU, memory, etc.).
- Automate the script using **Windows Task Scheduler** to run at regular intervals for routine system reporting.

### Example of modifying the output path:
```powershell
$os | Export-Csv -Path "C:\path\to\your\output\SystemInfo.csv" -NoTypeInformation

---

### **Key Sections of the README**:

1. **Project Title**: Clearly states the project name.
2. **Description**: Explains what the script does (collects and exports system information).
3. **Key Features**: Highlights the main features of the script.
4. **How to Use**: Provides step-by-step instructions on how to use the script.
5. **Sample Output**: Describes the output files and how users can view the sample.
6. **Customization**: Instructions for modifying the script or scheduling it for automated use.
7. **Automating with Task Scheduler**: Explains how to set up automated execution.
8. **Requirements**: Lists any dependencies, like PowerShell version and execution policy.
9. **License**: Mentions the open-source license (you can change it to the specific license if needed).
10. **Contributing**: Invites others to contribute to the project.
11. **Acknowledgments**: Gives credit to tools or communities used in the project.

---

### **How to Upload This README to GitHub**

1. **Create a README file**:
   - In your **GitHub repository**, click on **Add file > Create new file**.
   - Name the file `README.md`.
   
2. **Paste the Content**:
   - Copy the above content and paste it into the editor.
   
3. **Commit the Changes**:
   - Scroll down and click **Commit new file**.

Now your **GitHub repository** will have a detailed **README.md** file explaining the project, how to use it, and how others can contribute.

---

Let me know if you need any further adjustments or if you'd like help with GitHub-specific steps!


