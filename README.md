# Skalgard — site estático

Site institucional com início, mural, download e alternância entre dia e noite.
Não precisa de backend, banco de dados ou instalação de dependências para publicar.
Login, painel de conta, atendimento, chamados e chat da Runa foram removidos.

## Publicar no GitHub Pages

1. Crie um repositório para o site e envie **o conteúdo de SkalgardSite** para a raiz dele, incluindo `.github/workflows/pages.yml`. Use a branch `main` (ou ajuste o workflow para sua branch).
2. No repositório, abra **Settings → Pages → Build and deployment → Source → GitHub Actions**.
3. Na aba **Actions**, execute **Publicar Skalgard → Run workflow**, ou envie um novo commit para `main`.
4. O endereço publicado aparece em **Settings → Pages** e no resultado do workflow.

O workflow publica somente `public/`. Os caminhos relativos funcionam também em `https://usuario.github.io/nome-do-repositorio/`.
Se você mantiver SkalgardSite dentro de um repositório maior, coloque o workflow em `.github/workflows/` na raiz desse repositório e altere `path: public` para `path: SkalgardSite/public`. Esse workflow publica o site principal do Pages desse repositório.

Alternativa sem Actions: envie somente o conteúdo de `public/` para a raiz de um repositório e escolha **Deploy from a branch → main → / (root)**.

## Editar o conteúdo

- `public/news.json`: novidades do mural, da mais recente para a mais antiga. Datas no formato `AAAA-MM-DD`.
- `public/config.json`: `downloadUrl` é o link HTTP/HTTPS público do arquivo; `downloadName` é o nome exibido no botão. O botão usa o link direto do arquivo do Google Drive informado para este site. Deixe a URL vazia para mostrar “Baixar em breve”.
- `public/index.html`: textos e estrutura.
- `public/css/site.css`: aparência.
- `public/assets/`: imagens.

Após editar, envie um commit para atualizar a publicação. Esses arquivos são públicos; não inclua senhas ou dados de jogadores.

## Preview local

Com Node.js instalado, dê dois cliques em `iniciar-site.bat` e abra http://127.0.0.1:8090/.
Ou execute `node server.cjs` dentro desta pasta. Encerre com Ctrl+C.
A preview serve apenas os arquivos públicos no computador local, sem abrir firewall ou portas no roteador.
Use a preview HTTP: abrir o HTML por `file://` pode impedir a leitura dos arquivos JSON.

Documentação: https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages

