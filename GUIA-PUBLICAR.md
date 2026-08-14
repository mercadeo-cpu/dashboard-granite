# Publicar el dashboard Granite (GitHub Pages)

Objetivo: una **URL fija** que compartes una vez con tus colegas, y que cada semana se actualiza sola cuando corre la tarea programada. No tendrás que mandar archivos nunca más.

Yo ya dejé listo lo del lado técnico (repositorio local, `index.html` y el script `publish.sh`). Solo faltan unos pasos que requieren **tu cuenta de GitHub**. Toma ~5 minutos y se hace **una sola vez**.

---

## Paso 1 — Cuenta de GitHub (si no tienes)
Entra a https://github.com/signup y crea una cuenta gratis. Anota tu **nombre de usuario**.

## Paso 2 — Crear el repositorio
1. Arriba a la derecha, clic en **+** → **New repository**.
2. **Repository name:** `granite-dashboard`
3. Marca **Public**.
4. **NO** marques "Add a README".
5. Clic en **Create repository**.

## Paso 3 — Activar GitHub Pages
1. Dentro del repo, ve a **Settings** (arriba) → en el menú izquierdo, **Pages**.
2. En **Source**, elige **Deploy from a branch**.
3. **Branch:** `main` — carpeta **/ (root)** — clic en **Save**.
4. (Aún no habrá nada; se activará cuando yo suba el archivo.)

Tu URL final será:
```
https://TU-USUARIO.github.io/granite-dashboard/
```

## Paso 4 — Crear un token (para que la publicación semanal funcione sola)
El token es como una contraseña que le permite a la tarea automática subir la versión nueva cada semana. Le daremos el **mínimo permiso posible** (solo este repo, solo escribir archivos).

1. Ve a https://github.com/settings/tokens?type=beta (Fine-grained tokens).
2. Clic en **Generate new token**.
3. **Token name:** `granite-dashboard-publish`
4. **Expiration:** elige el máximo (o "No expiration" si lo permite).
5. **Repository access:** marca **Only select repositories** → selecciona `granite-dashboard`.
6. **Permissions** → **Repository permissions** → busca **Contents** → ponlo en **Read and write**.
7. Clic en **Generate token** y **copia** el token (empieza por `github_pat_...`). Solo se muestra una vez.

---

## Paso 5 — Envíame esto por el chat
Pega en el chat:
1. Tu **usuario** de GitHub.
2. El **nombre del repo** (si usaste otro distinto a `granite-dashboard`).
3. El **token** que copiaste.

Con eso yo hago la primera publicación, te confirmo la URL, y dejo la tarea semanal configurada para que republique sola cada vez que actualice los datos.

> **Nota de seguridad:** el token se guarda solo en la configuración local del repositorio (tu carpeta), con permiso mínimo a un solo repo. Si algún día quieres revocarlo, entra a la misma página de tokens y bórralo; puedes generar otro cuando quieras.
