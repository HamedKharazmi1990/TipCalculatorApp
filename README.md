# 💸 Tip Calculator (SwiftUI)

**Tip Calculator** is a simple and intuitive iOS application built with **SwiftUI** that helps users quickly calculate tips and split bills.  
The app focuses on clarity, ease of use, and clean SwiftUI state management.

---

## Demo
<div align="center">
  <table>
    <tr>
      <td align="center"><img src="./assets/iPhone_TipCalculator_demo.gif" height="300" alt="iPhone" /></td>
      <td align="center"><img src="./assets/iPad_TipCalculator_demo.gif"  height="300" alt="iPad" /></td>
    </tr>
    <tr>
      <td align="center"><sub>iPhone</sub></td>
      <td align="center"><sub>iPad</sub></td>
    </tr>
  </table>
</div>

---

## ✨ Features

- 💰 Calculate tip based on bill amount
- 📊 Adjustable tip percentage
- 👥 Split bill between multiple people
- ⚡ Instant, real-time calculation updates
- 📱 Clean and minimal SwiftUI interface
- 🧱 Simple and maintainable architecture

---

## 🧰 Tech Stack

| Category | Technology |
|--------|------------|
| **Language** | Swift |
| **Framework** | SwiftUI |
| **Architecture** | MVVM (lightweight) |
| **State Management** | @State / @Binding |
| **IDE** | Xcode |
| **Minimum OS** | iOS 17+ |

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone "https://github.com/HamedKharazmi1990/TipCalculatorApp"
cd "Tip Calculator"
```

### 2️⃣ Open the Project

    1. Open Tip Calculator.xcodeproj in Xcode
    2. Select an iPhone or iPad simulator
    3. Press Run (⌘R)

### 📱 Supported Platforms
| Platform | Support |
|--------|------------|
| **iPhone** | ✅ |
| **iPad** | ✅ |

### 💡 Usage

    1. Enter the bill amount
    2. Select or adjust the tip percentage
    3. Choose the number of people
    4. Instantly see:
        - Tip amount
        - Total bill
        - Amount per person


 ###   🔄 Data Flow
    User Input
        ↓
    SwiftUI State
        ↓
    Calculation Logic
        ↓
    UI Updates Automatically

###   🧮 Calculation Logic
The total amount is calculated using:

    Tip = Bill Amount × Tip Percentage
    Total = Bill Amount + Tip
    Per Person = Total ÷ Number of People

All calculations update in real time using SwiftUI state bindings.




### 👨‍💻 Maintainer

    Hamed Kharazmi
    📧 hamed.kharazmi@gmail.com
