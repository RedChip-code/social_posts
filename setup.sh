#!/bin/bash

# RedChip Press Release Agent — Streamlit Setup Script
# Run this once to set up the environment

set -e

echo "🚀 Setting up RedChip Press Release Agent (Streamlit)"
echo ""

# Check Python version
python_version=$(python3 --version 2>&1 | awk '{print $2}')
echo "✓ Python version: $python_version"

if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 not found. Please install Python 3.12+ first."
    exit 1
fi

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo ""
    echo "📦 Creating virtual environment..."
    python3 -m venv venv
    echo "✓ Virtual environment created"
fi

# Activate virtual environment
echo ""
echo "🔧 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo ""
echo "📦 Upgrading pip..."
pip install --upgrade pip setuptools wheel > /dev/null 2>&1
echo "✓ pip upgraded"

# Install dependencies
echo ""
echo "📦 Installing dependencies (this may take 1-2 minutes)..."
pip install -r requirements.txt

echo ""
echo "✅ Setup complete!"
echo ""
echo "🎯 Next steps:"
echo ""
echo "1. Get your Anthropic API Key from:"
echo "   → https://console.anthropic.com/api/keys"
echo ""
echo "2. Run the app:"
echo "   → source venv/bin/activate"
echo "   → streamlit run app.py"
echo ""
echo "3. Paste your API key in the sidebar"
echo ""
echo "Happy generating! 🚀"
