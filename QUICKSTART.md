# 🚀 Quick Start Guide

Follow these steps to get RedChip Press Release Agent running in 5 minutes.

---

## 1️⃣ Prerequisites

Make sure you have:
- ✅ Python 3.12+ installed (`python3 --version`)
- ✅ Anthropic API Key from [console.anthropic.com](https://console.anthropic.com)

---

## 2️⃣ Install & Run

Open Terminal in this folder and run:

```bash
bash setup.sh
```

Wait for it to complete (1-2 minutes for dependencies).

When done, you'll see:
```
✅ Setup complete!

🎯 Next steps:
1. Get your Anthropic API Key from:
   → https://console.anthropic.com/api/keys
```

---

## 3️⃣ Start the App

Still in Terminal, run:

```bash
source venv/bin/activate
streamlit run app.py
```

Your browser opens automatically. You'll see:

```
  You can now view your Streamlit app in your browser.

  Local URL: http://localhost:8501
```

---

## 4️⃣ Add Your API Key

In the browser window:

1. Look for **⚙️ Configuration** in the left sidebar
2. Paste your Anthropic API Key
3. You're ready to generate content!

---

## 5️⃣ Generate Your First Post

1. **Enter ticker** — e.g., `GLYFF`
2. **Upload reference docs** — optional but improves quality
3. **Paste press release** — headline, text, and URL
4. **Click "✨ Generate Social Content"**
5. **View & download** results

---

## 📋 Reference Document Tips

**Social Content Reference Guide** (optional):
- Upload your tone guide PDF or Word doc
- Include examples of approved posts
- Shows Claude your RedChip style

**Client Reference Files** (optional):
- Factsheets with metrics
- Investor decks
- Previous press releases
- Anything that provides company context

**Without these:** Claude still generates good content, but it won't match your specific style or include company-specific details.

---

## ✨ Output

You'll get 8 formatted posts:

- **2 Graphic titles** (for social media graphics)
- **2 X/Twitter posts** (analytical, 280+ chars)
- **2 LinkedIn/Facebook posts** (emoji-heavy, engaging)

Each is ready to copy/paste directly into your platforms.

---

## ❓ Need Help?

- **Tab 2** in the app has full setup & troubleshooting guides
- **README.md** has detailed reference docs
- **Common issue?** See the Troubleshooting section in the app

---

## 🎯 Keyboard Shortcut

Once the app is running, press:

| Key | Action |
|-----|--------|
| `C` | Clear everything and start fresh |
| `R` | Rerun the script |
| `Q` | Quit the app |

---

## 📞 Quick Checklist

- [ ] Python 3.12+ installed
- [ ] API Key ready
- [ ] `setup.sh` ran successfully
- [ ] `streamlit run app.py` opened in browser
- [ ] API key pasted in sidebar
- [ ] First press release generated

---

**That's it! You're ready to generate RedChip-quality social content. 🚀**

*For more details, open the README.md or check the 📚 Reference Guide tab in the app.*
