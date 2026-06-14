# VIPS Pharma — Portable Edition

This is a **ready-to-run** copy of VIPS Pharma. No installation, no Maven, no internet connection required — just Java.

---

## ✅ What You Need

- **Java 17 or newer** installed on this computer

To check if Java is already installed, open a terminal / command prompt and type:
```
java -version
```

If you see something like `java version "17..."` or higher, you're good to go.

If Java is **not installed**, download it for free from:
👉 https://adoptium.net/ (choose the **JRE** or **JDK**, version 17 or later)

---

## 📁 Folder Contents

```
VIPS-Pharma-Portable/
├── run.bat              ← double-click this on Windows
├── run.sh               ← run this on Linux / macOS
├── target/
│   ├── vips-pharma.jar  ← the application
│   └── lib/             ← required libraries (do not delete or move)
├── logo.png             ← (optional) replace this to use your own logo
├── vips_pharma.db        ← created automatically on first run
├── reports/              ← generated PDF receipts & reports appear here
└── medicine_images/       ← (not used — safe to ignore/delete)
```

> ⚠️ **Do not move `vips-pharma.jar` out of the `target/` folder**, and do not move the `lib/` folder separately. They must stay together.

---

## ▶️ How to Run

### Windows
Double-click **`run.bat`**

A window will briefly show a command prompt, then the VIPS Pharma login screen will appear.

### Linux / macOS
1. Open a terminal in this folder
2. Run:
   ```bash
   chmod +x run.sh
   ./run.sh
   ```

---

## 🔑 First-Time Login

The first time you run the app, a database file (`vips_pharma.db`) is created automatically in this folder, along with a default administrator account:

| Username | Password |
|---|---|
| `admin` | `admin123` |

**Please log in and change this password right away:**
1. Log in with the credentials above
2. Go to **User Management** (left sidebar)
3. Click **Edit** next to the `admin` account
4. Enter a new password and save

---

## 🎨 Changing the Logo

To replace the pill (💊) logo with your pharmacy's logo:

1. Find an image file of your logo (PNG, JPG, JPEG, or GIF)
2. Rename it to exactly: `logo.png` (or `logo.jpg` / `logo.jpeg` / `logo.gif`)
3. Place it in **this same folder** — next to `run.bat`
4. Close the app completely and run it again

Your logo will now appear on the login screen and in the sidebar.

---

## 🖨️ Where Are My Receipts & Reports?

Every printed receipt and stock report is saved as a PDF inside the `reports/` folder, which is created automatically the first time you print something.

---

## 👥 User Roles

Ask your administrator to create an account for you. Each account has one of these roles:

| Role | Can Do |
|---|---|
| **Administrator** | Everything — sales, inventory, reports, audit logs, manage user accounts |
| **Pharmacist** | Manage inventory, view sales history and audit logs (no Point of Sale, no user management) |
| **Cashier** | Point of Sale and view sales history only (cannot edit inventory) |

---

## ❓ Troubleshooting

**"JavaFX runtime components are missing" error**
→ Make sure you're running `run.bat` / `run.sh`, **not** double-clicking `vips-pharma.jar` directly.

**"java is not recognized" / "command not found"**
→ Java isn't installed, or isn't on your system PATH. Install Java 17+ from https://adoptium.net/ and restart your computer.

**The app won't open / closes immediately**
→ Open a terminal/command prompt in this folder and run the script manually (instead of double-clicking) to see the error message. Take a screenshot and send it to your IT support / developer.

**I forgot the admin password**
→ Contact your developer — the database will need to be reset or the password manually updated.

**A PDF didn't open after printing**
→ Check the `reports/` folder — the PDF was still created, it just may not have opened automatically. Open it manually with any PDF reader.

---

## 📞 Support

For technical issues, contact your system administrator or the developer who provided this software.
