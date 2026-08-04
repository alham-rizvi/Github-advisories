Welcome to my public archive of security research and responsible disclosures,

This repository contains:

- Assigned CVEs
- Public Security Advisories
- Reports Under Review

> [!NOTE]
> Reports under coordinated disclosure are **not** published until the vendor has released a fix or the advisory has been made public. Technical details and proof-of-concepts are intentionally withheld until the disclosure process is complete.

<summary><strong>🛡️ Assigned CVEs</strong></summary>

*Coming soon.*

</details>


<summary><strong>📄 Public Security Advisories (15)</strong></summary>

### SiYuan (12)

1. HTTP Basic Auth path in `CheckAuth()` bypasses the workspace access-code CAPTCHA/lockout, allowing unthrottled remote brute-force of the admin credential.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-w3xh-mmmh-r54v

2. Unthrottled brute-force of per-notebook Publish password via `/api/filetree/authFilePublishAccess`.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-v362-968x-gp2v

3. Unthrottled brute-force of `Conf.Api.Token` via header/query authentication in `CheckAuth()`.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-m6w6-p7pc-fpg2

4. Unthrottled brute-force of Publish Service Basic Authentication credentials.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-phg7-xcr4-q5wg

5. Session-cookie authentication lacks Origin/Referer validation, resulting in CSRF exposure.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-hhm2-g993-p656

6. Cross-Site WebSocket Hijacking on `/ws/network/proxy`.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-3cc2-h3v6-rqpq

7. Local privilege escalation via the bundled `elevator.exe` helper.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-vmp7-pm7g-ghcc

8. Stored XSS via arbitrary uploaded assets served from the same origin.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-mjf3-jwmf-r6wf

9. Unauthenticated `net/http/pprof` debug endpoints expose heap dumps and sensitive secrets.  
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-9cqq-p2hw-mj3f

10. Path Traversal in MCP `database_clean` resulting in arbitrary file read and deletion.  
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-43jx-gxq4-jpjc

11. 17 block metadata/content endpoints in kernel/api/block.go (getRefText, getBlockBreadcrumb, checkBlockExist, and 14 others) have zero publish-access filtering, reachable by anonymous publish-mode readers
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-4vpg-gwqq-w44c#event-896806

12. Six publish-mode reader-facing endpoints filter results using the "invisible" list instead of the "disabled" (forbidden) list, leaking content from notebooks/documents an admin explicitly disabled from publishing (update: eight endpoints confirmed, see body)
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-48p5-pffc-5r9p#event-896511

13. Attribute-breakout XSS-to-RCE via unescaped document bookmark/alias/memo/name fields in the "move/link to" file-tree picker's tooltip (app/src/util/pathName.ts), triggered by hovering
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-jjq3-3942-x99r#event-898885

14.XSS-to-RCE via malicious filename in the upload/drag-drop validation flow (app/src/protyle/upload/index.ts), reflected unescaped into showMessage's insertAdjacentHTML sink
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-jf56-jrhq-j2qp#event-898039

### FileRise (2)

15. Trailing-dot filename bypasses `UploadNamePolicy` strict-mode extension restrictions.  
    https://github.com/error311/FileRise/security/advisories/GHSA-8vmq-qjrm-m5f2

16. OnlyOffice callback silently skips JWT verification when the token is omitted.  
    https://github.com/error311/FileRise/security/advisories/GHSA-wg9q-3w29-xv5q
    

### REDAXO (1)

17. Mediapool: Unsanitized SVG uploads are publicly reachable, enabling Stored XSS.  
    https://github.com/redaxo/core/security/advisories/GHSA-2p3g-jr7p-qwwx

### Grav CMS (1)

18. Unauthenticated Path Traversal via missing directory-boundary checks in `plugin-asset-map.php`.  
    https://github.com/getgrav/grav/security/advisories/GHSA-4v9q-p283-qc2m

### PDFding

19. Path Traversal / Arbitrary File Write via Malicious Object Keys in Backup Restore (`recover_data`)
    https://github.com/mrmn2/PdfDing/security/advisories/GHSA-jjv3-jrv3-8r2g

20. Broken Access Control (IDOR) - PDF Upload Lets Any User Write Into Another User's Collection
    https://github.com/mrmn2/PdfDing/security/advisories/GHSA-q4p5-xx8j-5xwc

</details>


<summary><strong>⏳ Submitted Reports Under Review</strong></summary>

The following vulnerabilities have been responsibly reported to the respective maintainers and are currently undergoing coordinated disclosure. These advisories are **not yet public** and are accessible only to repository maintainers and the reporter until publication.

- **BentoPDF** — SSRF in `cors-proxy-worker.js` via DNS-based hostname allowlist bypass.  
  https://github.com/alam00000/bentopdf/security/advisories/GHSA-5xjf-rr5x-pcfj

- **Notesnook** — Unvalidated `releaseTrack` input allows renderer-controlled forced application relaunch and update-channel corruption.  
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-jmvr-c9wq-x6vx

- **Notesnook** — Session-wide permission request handler silently auto-grants nearly all sensitive permissions (camera, microphone, clipboard, notifications) without user interaction.  
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-2w7p-6rr7-pqgv

- **InvoicePlane** — Password reset token uses a non-constant-time comparison instead of `hash_equals()`.  
  https://github.com/InvoicePlane/InvoicePlane/security/advisories/GHSA-wcqc-qqv5-65ph

- **InvoicePlane** — Guest invoice/quote access keys and CRON authentication key are generated using a non-cryptographic PRNG.  
  https://github.com/InvoicePlane/InvoicePlane/security/advisories/GHSA-chqc-v432-8pj8

- **notesnook** — Unvalidated releaseTrack input and missing confirmation allow renderer-controlled forced app relaunch and update-channel corruption
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-jmvr-c9wq-x6vx

- **notesnook** — Session-wide permission request handler silently auto-grants nearly all sensitive permissions (camera, microphone, clipboard, notifications) with no user prompt
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-2w7p-6rr7-pqgv


-**gravCMS** - config_denied_paths default list omits `system`, exposing real secrets (e.g. system.cache.redis.password) via the Twig sandbox when config_access is enabled
  https://github.com/getgrav/grav/security/advisories/GHSA-xjw5-q542-3vmr

-**gravCMS** - UserInterface offsetget/offsetexists allow-listed in Twig sandbox let editor-authored content leak hashed_password and 2FA secrets via offsetGet()
   https://github.com/getgrav/grav/security/advisories/GHSA-3jhr-mxmx-38cx


</details>


## Responsible Disclosure

I follow responsible disclosure practices and work directly with maintainers to ensure vulnerabilities are remediated before public disclosure.

This repository contains **only publicly available advisories and CVEs**. Vulnerabilities that are still under review are listed only as high-level report titles until coordinated disclosure is complete.

### Statistics

- **Public Advisories:** 15
- **Assigned CVEs:** Updating soon
- **Reports Under Review:** 5

_Last updated: August 2026_
