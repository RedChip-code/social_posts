# 📁 Local File Loading — Setup Guide

Your Streamlit app now **automatically loads PDFs and documents** from your local `client-files` folder instead of requiring uploads!

---

## 🎯 New Workflow

### Before (Manual Upload)
❌ Upload reference files each time  
❌ Browse computer for PDFs  
❌ Upload for each press release  

### Now (Automatic Local Loading)
✅ Place documents in `client-files/{TICKER}/` once  
✅ App auto-loads when you enter ticker  
✅ No uploads needed, ever!  

---

## 📂 Folder Structure

Create this structure in your `clark` folder:

```
clark/
├── app.py
├── requirements.txt
├── setup.sh
└── client-files/                    ← Your company documents
    ├── GLYFF/
    │   ├── glyff_factsheet.pdf
    │   ├── investor_deck_2024.pdf
    │   └── quarterly_results.docx
    ├── CYBN/
    │   ├── cybn_overview.pdf
    │   └── research_report.pdf
    └── ABCD/
        └── abcd_company_profile.txt
```

---

## 🚀 Quick Start

### 1. Create Folders for Your Companies

```bash
mkdir -p ~/Desktop/clark/client-files/GLYFF
mkdir -p ~/Desktop/clark/client-files/CYBN
mkdir -p ~/Desktop/clark/client-files/ABCD
```

### 2. Add Your Documents

Copy your PDFs, Word docs, and text files:

```bash
cp ~/Downloads/factsheet.pdf ~/Desktop/clark/client-files/GLYFF/
cp ~/Downloads/investor_deck.pdf ~/Desktop/clark/client-files/GLYFF/
cp ~/Downloads/research_notes.md ~/Desktop/clark/client-files/GLYFF/
```

**Supported formats:**
- `.pdf` — PDF documents
- `.docx` — Word documents
- `.txt` — Plain text
- `.md` — Markdown

### 3. Use in Streamlit App

**Step 1:** Enter ticker (e.g., `GLYFF`)

**Step 2:** App automatically shows:
```
✅ Found 3 reference file(s) for GLYFF
  📄 Client Files
    📎 glyff_factsheet.pdf
    📎 investor_deck_2024.pdf
    📎 quarterly_results.docx
```

**Step 3:** Fetch press releases and generate content
- App uses these local files automatically
- No uploads needed!

---

## 💡 Pro Tips

### Organize by Company
One folder per ticker = one company. Keep them separate and organized.

```
client-files/
├── GLYFF/       ← All GLYFF documents here
├── CYBN/        ← All CYBN documents here
└── ABCD/        ← All ABCD documents here
```

### Include Multiple Documents
More documents = better AI context = better content

✅ Add:
- Factsheet
- Investor deck
- Recent research reports
- Company overview
- Market analysis

### File Naming
Use clear, descriptive names:
- ✅ `glyff_factsheet.pdf`
- ✅ `investor_deck_2024.pdf`
- ✅ `q3_earnings_report.pdf`
- ❌ `doc.pdf`
- ❌ `file1.pdf`

### Master Tone Guide (Optional)
If you have a master "Social Content Reference Guide" with RedChip tone/style guidelines:
- Upload it in **Step 2** of the app
- It applies to ALL companies
- No folder needed, just upload once

---

## 📋 File Locations

| Item | Location | Notes |
|------|----------|-------|
| Company files | `~/Desktop/clark/client-files/TICKER/` | Auto-loaded by app |
| Master tone guide | Upload in Step 2 | Optional, applies to all |
| Example folder | `~/Desktop/clark/client-files/EXAMPLE/` | Template showing structure |
| Example template | `~/Desktop/clark/client-files/EXAMPLE/template.txt` | Copy as reference |

---

## ✅ Checklist

- [ ] Created `client-files` folder
- [ ] Created subfolders for each ticker (e.g., `GLYFF`, `CYBN`)
- [ ] Added PDFs/documents to ticker folders
- [ ] Opened Streamlit app
- [ ] Entered a ticker
- [ ] Saw "✅ Found X reference file(s)" message
- [ ] Successfully generated social content

---

## 🎓 Example: GLYFF Setup

```bash
# Create folder
mkdir -p ~/Desktop/clark/client-files/GLYFF

# Add documents
cp ~/Downloads/glyff_factsheet.pdf ~/Desktop/clark/client-files/GLYFF/
cp ~/Downloads/investor_presentation.pdf ~/Desktop/clark/client-files/GLYFF/
cp ~/Downloads/research_analysis.txt ~/Desktop/clark/client-files/GLYFF/

# Verify
ls ~/Desktop/clark/client-files/GLYFF/
# Output:
# glyff_factsheet.pdf
# investor_presentation.pdf
# research_analysis.txt
```

Then in Streamlit:
1. Enter `GLYFF` in Step 1
2. See "✅ Found 3 reference file(s) for GLYFF"
3. Click "📡 Fetch Latest Press Releases"
4. Select a release and click "✨ Generate Social Content"
5. App auto-loads all 3 files and generates content!

---

## 🔧 Troubleshooting

| Problem | Solution |
|---------|----------|
| **"No reference files found"** | Check folder exists: `client-files/TICKER/` |
| **Files not showing** | Make sure folder name matches ticker exactly (case-insensitive) |
| **Wrong files loading** | Verify file is in correct ticker folder |
| **PDFs not readable** | Check PDF is not corrupted; try with `.txt` alternative |
| **Want to update files** | Replace files in folder; app reloads automatically |

---

## 🎯 Next Steps

1. **Organize your documents** into `client-files/TICKER/` folders
2. **Open the Streamlit app** at `http://localhost:8501`
3. **Enter a ticker** → see files auto-load
4. **Generate social content** with one click!

No more uploading PDFs every time. Just place them in the right folder and go! 🚀

---

*For detailed info, see `client-files/README.md` in your project folder.*
