# Onboarding — Sito oblo.digital

Benvenuto! Questa guida ti serve per iniziare a lavorare sulla homepage di [oblo.digital](https://oblo.digital).

## 1. Accesso

Sei stato invitato come collaboratore su GitHub al repository `oblolab/oblo-website`. Controlla l'email o le notifiche di GitHub e accetta l'invito.

## 2. Prepara il computer

1. **Git**: se non l'hai già installato, scaricalo da [git-scm.com](https://git-scm.com).
2. **Clona il repository**:
   ```bash
   git clone https://github.com/oblolab/oblo-website.git
   cd oblo-website
   git checkout riccardo/sviluppo
   ```
3. **Guarda il sito in locale**: non serve installare niente. Puoi aprire `index.html` direttamente nel browser, oppure avviare un piccolo server (consigliato, così i percorsi `/...` funzionano):
   ```bash
   python3 -m http.server 8000
   ```
   Poi apri [http://localhost:8000](http://localhost:8000).

## 3. Com'è fatto il sito

È un sito statico, senza framework e senza build:

- `index.html`: tutta la homepage, con CSS e JavaScript inline nello stesso file
- `favicon.svg`, `og-image.jpg`: icona e immagine di anteprima per i social (1200×630)
- `robots.txt`, `sitemap.xml`: file per i motori di ricerca
- `Dockerfile`: immagine nginx che serve i file qui sopra

Nell'`<head>` ci sono meta SEO, Open Graph, dati strutturati schema.org (LocalBusiness) e gli eventi di Google Analytics (clic su email, CTA "Analisi gratuita", pulsanti "Inizia" dei pacchetti). **Se cambi i testi dei pulsanti, controlla che i nomi usati dal tracciamento GA restino validi.**

Il blog (`/blog/`) **non** è in questo repo: è gestito a parte tramite Ghost.

## 4. Come lavorare (flusso Git)

Ognuno ha il proprio branch: tu usi `riccardo/sviluppo`, Cristian usa `cristian/sviluppo`. **Non lavorare mai direttamente su `main`**: è la versione che va online.

1. Prima di iniziare, allinea il tuo branch con `main`:
   ```bash
   git checkout riccardo/sviluppo
   git pull
   git merge origin/main
   ```
2. Fai le modifiche e controllale in locale.
3. Salva e invia il lavoro:
   ```bash
   git add .
   git commit -m "Descrizione breve della modifica"
   git push
   ```
4. Su GitHub apri una **Pull Request** da `riccardo/sviluppo` verso `main` e descrivi cosa hai fatto.
5. Aspetta la revisione: è Cristian a fare il merge e a decidere quando pubblicare.

## 5. Regola importante

Ogni modifica al sito deve passare da questo repository. Non modificare i file direttamente sul server: le modifiche fatte fuori da git si perdono al deploy successivo.

## Domande?

Chiedi a Cristian, oppure a Claude Code se stai leggendo questa guida da lì.
