#!/usr/bin/env bash
# Publica el dashboard Granite en GitHub Pages.
# La tarea programada semanal ejecuta este script tras actualizar granite_dashboard.html.
set -e
cd "$(dirname "$0")"

# Limpieza defensiva de locks (el volumen montado a veces deja locks colgados).
rm -f .git/HEAD.lock .git/index.lock .git/refs/heads/*.lock 2>/dev/null || true

# GitHub Pages sirve index.html en la raíz -> copiamos la versión más reciente.
cp granite_dashboard.html index.html

git add index.html granite_dashboard.html
if git diff --cached --quiet; then
  echo "Sin cambios; no se publica."
  exit 0
fi

git commit -q -m "Actualización dashboard $(date +%Y-%m-%d)"
git push -q origin main
echo "Publicado: $(date +%Y-%m-%d)"
