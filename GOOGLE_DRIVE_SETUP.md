# 🚗 Google Drive Setup Guide

Your Streamlit app now uses **shared Google Drive folders** for team collaboration!

---

## 🎯 Quick Start

### 1️⃣ Create Shared Google Drive Folders

For each company, create a Google Drive folder:

```
RedChip Press Release Content/
├── GLYFF/         ← Company reference documents
├── CYBN/
├── ABCD/
└── ...
```

### 2️⃣ Add Reference Documents

Inside each folder (e.g., `GLYFF/`), add:
- 📄 Company factsheet (PDF)
- 📊 Investor deck (PDF)
- 📑 Research reports (PDF)
- 📝 Company overview (Word/Text)

### 3️⃣ Share with Your Team

**Right-click folder → Share:**
- Link: `https://drive.google.com/drive/folders/FOLDER_ID`
- Access: **"Anyone with link can view"** (or specific emails if internal)
- ✅ Copy the link

### 4️⃣ Add to Streamlit App

**In the app:**
1. Enter **Ticker Symbol** (Step 1)
2. **Paste Drive folder link** (Step 2)
3. Click **"✅ Save Drive Link"**
4. Done! Link is saved for your team

---

## 📋 How to Find Your Drive Folder Link

### Method 1: Copy from Browser
1. Open Google Drive
2. Right-click folder → **Open in new tab**
3. Copy the URL from address bar
4. Format: `https://drive.google.com/drive/folders/XXXXXXXXXXXXXXXXX`

### Method 2: Right-click Share
1. Right-click folder
2. Click **"Share"**
3. Click **"Copy link"**
4. It's already formatted correctly!

---

## 🔒 Sharing Settings (Important!)

**Your folders MUST be shared with:**
✅ **"Anyone with the link can view"** (for wide team access)  
✅ **Specific team emails** (if internal only)

**Do NOT use:**
❌ **"Restricted"** (links won't work)

---

## 📁 Folder Organization Example

```
RedChip Reference Documents (shared team folder)
│
├── GLYFF/
│   ├── GLYFF_Factsheet_2024.pdf
│   ├── GlyFF_Investor_Deck.pdf
│   ├── GLYFF_Quarterly_Results.docx
│   └── GLYFF_Market_Analysis.pdf
│
├── CYBN/
│   ├── CYBN_Company_Overview.pdf
│   ├── CYBN_Product_Guide.pdf
│   └── CYBN_Investor_Presentation.pptx
│
└── ABCD/
    ├── ABCD_Factsheet.pdf
    └── ABCD_Recent_News.doc
```

---

## 🚀 Workflow

### Team Member 1 (Sets Up Links)
1. Create Drive folders with reference docs
2. Share with team
3. Open Streamlit app
4. Enter ticker + paste Drive link
5. Click "✅ Save Drive Link"

### Team Members 2, 3, 4...
1. Open Streamlit app
2. See Drive link already saved for that ticker
3. Press "📡 Fetch Latest Press Releases"
4. Generate social content
5. App **automatically uses shared Drive documents**

✅ **Everyone sees the same reference documents!**

---

## 💾 Where Links Are Stored

The app saves Drive links in:
```
~/Desktop/clark/drive_config.json
```

Example:
```json
{
  "GLYFF": "https://drive.google.com/drive/folders/1Abc...",
  "CYBN": "https://drive.google.com/drive/folders/2Xyz...",
  "ABCD": "https://drive.google.com/drive/folders/3Def..."
}
```

You can also **manually edit this file** if needed.

---

## ✅ Checklist

- [ ] Created Google Drive folder for each company
- [ ] Added PDFs/docs to each folder
- [ ] Shared folders with team
- [ ] Copied Drive folder links
- [ ] Opened Streamlit app
- [ ] Pasted Drive links for each ticker
- [ ] Clicked "✅ Save Drive Link"
- [ ] Tested fetching press releases
- [ ] Generated social content successfully

---

## 🔧 Troubleshooting

| Problem | Solution |
|---------|----------|
| **"Invalid Drive link"** | Check URL format: `https://drive.google.com/drive/folders/FOLDER_ID` |
| **"Link doesn't work"** | Make sure folder is shared with **"Anyone with link can view"** |
| **"Can't see files"** | Check sharing permissions on the Drive folder |
| **"Want to update files"** | Just update files in the Drive folder — app loads latest automatically |
| **"Team member can't access"** | Verify they have link and folder is publicly shared |

---

## 💡 Pro Tips

✅ **Organize by company:**
One folder per ticker, all related docs inside

✅ **Clear file names:**
`GLYFF_Factsheet_2024.pdf` (not `doc.pdf`)

✅ **Team collaboration:**
Everyone sees same files, no duplication

✅ **Easy updates:**
Update files in Drive, everyone gets latest

✅ **Backup:**
Google Drive auto-saves, no local storage needed

---

## 🔐 Security Notes

- ✅ Only share with people who need access
- ✅ Use "Viewer" role (read-only) for most team members
- ✅ Drive auto-syncs, so confidential docs stay in one place
- ✅ You control who has the link

---

## 📖 Example Setup

**Your Team Structure:**
- You (setup): Create folders, add docs, share with team
- Team: Uses Streamlit app, generates content

**Folder Structure:**
```
/My Drive/RedChip Client Files/
├── GLYFF/
│   └── factsheet.pdf
├── CYBN/
│   └── investor_deck.pdf
└── ABCD/
    └── overview.pdf
```

**In Streamlit App:**
```
Ticker: GLYFF
Google Drive Link: https://drive.google.com/drive/folders/ABC123...
✅ Save Drive Link

Then when you fetch RSS and click "Generate":
→ App automatically loads files from that shared Drive folder
→ Generates social content using shared reference docs
```

---

## 🎓 Complete Example

### 1. Create Drive Folder
- Name: `GLYFF_Reference_Docs`
- Add: factsheet.pdf, investor_deck.pdf, quarterly_results.docx

### 2. Share Folder
- Click **Share** → **Copy Link**
- Link: `https://drive.google.com/drive/folders/1Abc2Def3Ghi4Jkl5Mno`

### 3. Add to App
- Open Streamlit app
- Step 1: Enter `GLYFF`
- Step 2: Paste link `https://drive.google.com/drive/folders/1Abc2Def3Ghi4Jkl5Mno`
- Click **"✅ Save Drive Link"**

### 4. Use
- Fetch RSS feed
- Click **"Generate Social Content"**
- App auto-loads all 3 files from shared Drive folder
- Generates content with team's reference docs

✅ **Now your whole team is using the same source of truth!**

---

*For quick setup questions, see the app's 📚 Reference Guide tab.*
