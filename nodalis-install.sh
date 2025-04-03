#!/bin/sh

echo "📦 Scarico latest.txt..."
curl -fsSL https://raw.githubusercontent.com/Federfico87/nodalis/main/latest.txt -o /tmp/latest.txt || exit 1

URL=$(cat /tmp/latest.txt)
echo "🔗 URL pacchetto: $URL"

echo "⬇️ Scarico pacchetto Nodalis..."
curl -fsSL "$URL" -o /tmp/nodalis.tar.gz || exit 1

echo "📂 Estraggo pacchetto in /data/home/nodalis"
mkdir -p /data/home/nodalis
tar -xzf /tmp/nodalis.tar.gz -C /data/home/nodalis

echo "✅ App Nodalis installata su /data/home/nodalis"

