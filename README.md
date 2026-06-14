# VI-PS Pharma — Portable Edition

This is a **ready-to-run** copy of VI-PS Pharma. Everything needed to run the app is included in this folder — no installation, no Maven, and no internet connection required.

---

## ✅ What You Need

- **Java 17 or newer** installed on this computer (only required if you use `run.bat` — see below)

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
VI-PS Pharma/
├── VI-PS.exe                 ← double-click this on Windows (easiest)
├── run.bat                    ← alternative launcher (requires Java)
├── javafx-sdk-26.0.1/         ← required — do not delete or move
├── target/
│   └── vips-pharma-fat.jar    ← the application itself
├── logo.png                   ← your pharmacy's logo (replaceable)
├── login_bg.png               ← login screen background image (replaceable)
├── vips_pharma.db              ← database — created/updated automatically
└── reports/                    ← generated PDF receipts & reports appear here
```

> ⚠️ Keep `javafx-sdk-26.0.1/`, `target/`, and the `.exe`/`.bat` files together in the same folder. Moving the JAR out of `target/`, or moving the JavaFX SDK folder elsewhere, will prevent the app from starting.

---

## ▶️ How to Run

### Option 1 — Windows (recommended)
Double-click **`VI-PS.exe`**

This is a native launcher and does not require Java to be on your PATH (it locates the bundled JavaFX SDK and fat JAR automatically).

### Option 2 — Using run.bat (Windows, requires Java)
Double-click **`run.bat`**

A command prompt window will briefly appear, then the VI-PS Pharma login screen will open. This script uses the bundled `javafx-sdk-26.0.1` folder, so Java itself does not need JavaFX installed separately — just a plain Java 17+ runtime.

---

## 🔑 First-Time Login

A database file (`vips_pharma.db`) is included/created automatically in this folder with a default administrator account:

| Username | Password |
|---|---|
| `admin` | `admin123` |

**Please log in and change this password right away:**
1. Log in with the credentials above
2. Go to **User Management** (left sidebar)
3. Click **Edit** next to the `admin` account
4. Enter a new password and save

---

## 🎨 Changing the Logo & Login Background

Two images control the branding, both already present in this folder and safe to replace:

| File | What it does |
|---|---|
| `logo.png` | Appears on the login screen, sidebar, and as the window/taskbar icon |
| `login_bg.png` | Background image on the right side of the login screen |

To change either:
1. Replace the file with your own image, **keeping the same filename** (`logo.png` / `login_bg.png`)
2. Accepted formats: PNG, JPG, JPEG, or GIF (for the logo); PNG, JPG, or JPEG (for the background)
3. Close the app completely and reopen it

If either file is removed, the app falls back to a default pill icon and a plain background — it will not crash.

---

## 🖨️ Where Are My Receipts & Reports?

Every printed receipt and stock report is saved as a PDF inside the `reports/` folder. The underlying XML data used to generate each PDF is kept in `reports/data/` for reference.

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

**"javafx-sdk-26.0.1\lib not found" or "vips-pharma-fat.jar not found"**
→ One of the required folders/files has been moved or deleted. Re-extract the original distribution folder and try again, keeping everything together.

**"java is not recognized" / "command not found" (when using run.bat)**
→ Java isn't installed, or isn't on your system PATH. Install Java 17+ from https://adoptium.net/ and restart your computer. Alternatively, use `VI-PS.exe` instead, which doesn't require Java on PATH.

**The app won't open / closes immediately**
→ Try `run.bat` instead of the `.exe` (or vice versa) to see if you get an error message. You can also open a command prompt in this folder and run `run.bat` manually to see the full error text.

**I forgot the admin password**
→ Contact your developer — the database will need to be reset or the password manually updated.

**A PDF didn't open after printing**
→ Check the `reports/` folder — the PDF was still created, it just may not have opened automatically. Open it manually with any PDF reader.

**The ₱ (peso sign) shows as a box or question mark in PDFs**
→ This shouldn't happen with the bundled fonts, but if it does, ensure the `target/` folder wasn't modified — the fat JAR includes the required Unicode font files.
