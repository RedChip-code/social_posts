# RedChip Press Release Agent — Streamlit Frontend

## What This Does

Generate professional social media content from press releases using AI. This Streamlit app lets you:

1. **Fetch RSS feeds** — automatically get press releases from RedChip for any ticker
2. **Auto-load reference documents** — PDFs, Word docs, and text files from your local `client-files` folder
3. **Generate social content** — 8 professionally formatted posts with a single click:
   - 2 Graphic titles & subtitles
   - 2 X/Twitter analytical posts  
   - 2 LinkedIn/Instagram/Facebook posts

Perfect for investor relations teams, marketing departments, and financial communications professionals.

---

## Folder Structure

```
clark/
├── app.py                          ← Main Streamlit app
├── requirements.txt                ← Dependencies
├── setup.sh                        ← Setup script
└── client-files/                   ← Auto-load PDFs for each company
    ├── GLYFF/
    │   ├── factsheet.pdf
    │   ├── investor_deck.pdf
    │   └── latest_research.docx
    ├── CYBN/
    │   ├── company_overview.pdf
    │   └── Q3_results.pdf
    └── (one folder per ticker...)
```

**Key:** Folder names must match ticker symbols exactly (uppercase or lowercase both work).

---

## Quick Start

## How to Use

### Step 1: Set Up Your Client Files

**Create folders for each company ticker:**

```bash
mkdir -p client-files/GLYFF
mkdir -p client-files/CYBN
mkdir -p client-files/ABCD
```

Then add your PDFs, Word docs, and text files:
```
client-files/
├── GLYFF/
│   ├── factsheet.pdf
│   ├── investor_deck.pdf
│   └── latest_research.docx
└── CYBN/
    ├── overview.pdf
    └── results.pdf
```

**The app will automatically load these when you enter a ticker!**

### Step 2: Add Your API Key

1. Go to [console.anthropic.com](https://console.anthropic.com) and sign in
2. Click **API Keys** in the left sidebar
3. Click **Create Key** and name it `redchip-agent`
4. Copy the key (starts with `sk-ant-`)
5. In the Streamlit app, paste it in the left sidebar under **Configuration**

### Step 3: Generate Social Content

**Workflow:**

1. **Enter ticker** (e.g., `GLYFF`)
   - App automatically detects available client files in `client-files/GLYFF/`
   
2. **(Optional) Upload tone guide** — Master Social Content Reference Guide
   - This is optional; use if you have a special tone guide PDF
   
3. **Click "📡 Fetch Latest Press Releases"**
   - Fetches from `https://redchip.com/rss/company/{ticker}`
   - Shows all recent press releases
   
4. **For each release:**
   - **"🔄 Check"** button — Verify the press release can be scraped
   - **"✨ Generate Social Content"** button — Create all 8 social posts
   - App auto-loads client files from `client-files/{ticker}/` folder
   
5. **View & download**
   - See 8 perfectly formatted posts on screen
   - Click "📥 Download as JSON" to save everything

---

## File Structure

```
redchip-agent/
├── app.py                          ← Main Streamlit app
├── requirements.txt                ← Python dependencies
├── README.md                       ← This file
└── .env (optional)                 ← API keys (if not using sidebar)
```

### Optional: Use `.env` File

Instead of pasting your API key in the sidebar each time, create a `.env` file:

```
ANTHROPIC_API_KEY=sk-ant-your-key-here
```

Then run: `streamlit run app.py`

---

## What Each Output Does

| Output | Purpose | Use |
|--------|---------|-----|
| **Graphic Title 1 & 2** | Short, punchy headlines for social media graphics | Pair with design team to create visuals |
| **X/Twitter Posts** | Long-form analytical posts (280+ chars) | Post directly or thread them |
| **LinkedIn/Instagram/Facebook Posts** | Emoji-heavy, engagement-focused posts | Copy/paste into each platform's native composer |

---

## Tips for Best Results

✅ **DO:**
- Include specific numbers, metrics, and milestones in the press release
- Provide a detailed Social Content Reference Guide with real examples
- Upload relevant client-specific documents (factsheets, investor decks)
- Use clear, complete press release text (not just summaries)
- Follow RedChip's standard tone and formatting guidelines

❌ **DON'T:**
- Use vague language like "exciting" or "game-changing"
- Reproduce press release boilerplate word-for-word
- Forget the ticker symbol and specific numbers
- Upload irrelevant reference documents
- Expect the AI to use hype or exclamation points

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| **"API Key is required"** | Paste your Anthropic key in the left panel |
| **"Content not generating"** | Check your API key is valid; try with shorter text first |
| **"Output quality is off"** | Add a more detailed Social Content Reference Guide with examples |
| **"Missing section in output"** | Try again; sometimes Claude needs slightly different input formatting |

---

## Advanced: Run Behind a Proxy or on a Server

To run this on a Mac that's always on, or deploy to a remote server:

```bash
# Run in headless mode with external access
streamlit run app.py \
  --server.headless true \
  --server.port 8501 \
  --server.address 0.0.0.0
```

Then access from any browser: `http://your-mac-ip:8501`

---

## Settings & Configuration

All settings are in the left sidebar:

- **Anthropic API Key** — Your auth token
- **How It Works** — Quick reference
- **Setup Instructions** — Help section
- **Troubleshooting** — Common fixes

---

## Integration with Original Agent

This Streamlit app works **independently** but shares the same Claude prompts as the original redchip-agent.

- **Streamlit app (this)** — Interactive, on-demand, upload files in the UI
- **Scheduled agent (original)** — Runs automatically on macOS hourly, reads from disk folders

You can use both:
1. **Test and iterate** with Streamlit
2. **Run production** with the scheduled agent once everything is perfected

---

## Support

**Get stuck?**

1. Check the **📚 Reference Guide** tab in the app for setup help
2. Verify your API key is valid at [console.anthropic.com](https://console.anthropic.com)
3. Try generating with simpler input first (shorter press release, fewer reference docs)
4. Check you're using Python 3.12+ (`python3 --version`)

---

**RedChip Press Release Agent — streamlit frontend**  
*Generated for clark@redchip.com*
