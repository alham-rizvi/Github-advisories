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


<summary><strong>📄 Public Security Advisories (26)</strong></summary>

### SiYuan (20)

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

14. XSS-to-RCE via malicious filename in the upload/drag-drop validation flow (app/src/protyle/upload/index.ts), reflected unescaped into showMessage's insertAdjacentHTML sink
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-jf56-jrhq-j2qp#event-898039

15. Zero-click XSS-to-RCE via unescaped block name/alias/memo in the "((" block-reference autocomplete hint popup (app/src/protyle/hint/extend.ts), fires on render with no user interaction beyond typing a reference
   https://github.com/fleetdm/fleet/security/advisories/GHSA-8rr8-84pc-6rpp

16. Path Traversal via unvalidated packageName across all 10 Bazaar install/uninstall endpoints, enabling arbitrary-location file write (install) and arbitrary recursive directory deletion (uninstall)
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-wr4w-7vjm-mmx3

17. Unrestricted arbitrary file/directory deletion via /api/search/removeTemplate: the client-supplied "path" parameter is passed directly to os.RemoveAll with no validation and no base-directory restriction
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-w938-w7m4-qrj8

18. Missing consistency check between packageName and repoURL/repoHash in bazaar package install allows overwriting an existing, trusted plugin
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-rpx2-p6hp-x5gj

19. Secret placeholders in the http_request MCP tool are interpolated into the destination URL, enabling exfiltration of stored secrets to any attacker-chosen host
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-853m-gvvm-6rvx

20. MCP file tool's blocklist is incomplete relative to the HTTP file API it claims to align with, exposing publish-mode passwords and other sensitive workspace files
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-c8r8-95hg-mp34

21. Unescaped URL concatenation into evaluateJavaScript allows JavaScript injection via the `siyuan://` custom URL scheme
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-7ffh-xpqv-mh58

### FileRise (2)

21. Trailing-dot filename bypasses `UploadNamePolicy` strict-mode extension restrictions.  
    https://github.com/error311/FileRise/security/advisories/GHSA-8vmq-qjrm-m5f2

22. OnlyOffice callback silently skips JWT verification when the token is omitted.  
    https://github.com/error311/FileRise/security/advisories/GHSA-wg9q-3w29-xv5q

### REDAXO (1)

23. Mediapool: Unsanitized SVG uploads are publicly reachable, enabling Stored XSS.  
    https://github.com/redaxo/core/security/advisories/GHSA-2p3g-jr7p-qwwx

### Grav CMS (1)

24. Unauthenticated Path Traversal via missing directory-boundary checks in `plugin-asset-map.php`.  
    https://github.com/getgrav/grav/security/advisories/GHSA-4v9q-p283-qc2m

- **gravCMS** - onApiUserListRowAction "unlock" handler does not check the target account's privilege level, letting an api.users.write account clear an admin.super account's lockout
  https://github.com/getgrav/grav/security/advisories/GHSA-985r-mpj8-5rqw#event-910316

- **gravCMS** - media_directory() Twig function allows filesystem path traversal and file content disclosure from sandboxed page content
  https://github.com/getgrav/grav/security/advisories/GHSA-47ch-6w46-6xm7

- **gravCMS** - sendInvitationEmail() is missing the untrusted-Host-header protection the other three security-sensitive email links have, and require_trusted_host only enforces one of four flows
  https://github.com/getgrav/grav/security/advisories/GHSA-69vf-mjxw-x79j

- **gravCMS** - Scheduler\Job::createLockFile() follows symlinks in the world-writable system temp directory (local symlink attack) [INFORMATIONAL]
  https://github.com/getgrav/grav/security/advisories/GHSA-q8w8-6cq5-j4h2

- **gravCMS** - [flex-objects] shortcode bypasses Flex directory ACL entirely, exposing any registered collection to anyone with page-edit access
 https://github.com/getgrav/grav/security/advisories/GHSA-x929-528m-vx2m#event-910540

- **gravCMS** - Webhook delivery re-resolves the target hostname after validating it, allowing the SSRF guard to be bypassed by DNS rebinding
 https://github.com/getgrav/grav/security/advisories/GHSA-hq2v-cgw4-fw2w#event-910555

- **gravCMS** - config_denied_paths default list omits `system`, exposing real secrets (e.g. system.cache.redis.password) via the Twig sandbox when config_access is enabled
  https://github.com/getgrav/grav/security/advisories/GHSA-xjw5-q542-3vmr

- **gravCMS** - UserInterface offsetget/offsetexists allow-listed in Twig sandbox let editor-authored content leak hashed_password and 2FA secrets via offsetGet()
   https://github.com/getgrav/grav/security/advisories/GHSA-3jhr-mxmx-38cx

- **gravCMS** - Origin validation bypass in Uri::referrer() and Pages::referrerRoute() via unanchored prefix match
   https://github.com/getgrav/grav/security/advisories/GHSA-9ccq-2jfg-qw33

- **gravCMS** - Non constant time nonce comparison in Utils::verifyNonce() used for CSRF protection
   https://github.com/getgrav/grav/security/advisories/GHSA-38p6-h87p-r4cg

- **gravCMS** - Password reset and activation tokens compared with non-constant-time === instead of hash_equals(), and reset-submission endpoint has no rate limiting
   https://github.com/getgrav/grav/security/advisories/GHSA-x239-6jqx-5hjh

- **gravCMS** - User registration discloses whether an email address is already registered (email enumeration)
   https://github.com/getgrav/grav/security/advisories/GHSA-crh8-xm27-j9g9

- **gravCMS** - The system, site, and theme Twig variables bypass the content sandbox entirely and are never covered by config_denied_paths
   https://github.com/getgrav/grav/security/advisories/GHSA-p597-crqc-m349

### note-mark 

- **note-mark** -  Token exchange grant (RFC 8693) authenticates the caller based solely on whether their supplied subject_token is accepted by the OIDC provider's userinfo endpoint, with no check that the token was actually issued for note-mark itself, allowing an access token obtained through any other client of the same identity provider to authenticate as that user here
    https://github.com/enchant97/note-mark/security/advisories/GHSA-3j7j-3hq5-h3rp#event-910592

- **note-mark** - No audience check during RFC 8693 token exchange
    https://github.com/enchant97/note-mark/security/advisories/GHSA-3j7j-3hq5-h3rp#event-917323


### PDFding (2)

25. Path Traversal / Arbitrary File Write via Malicious Object Keys in Backup Restore (`recover_data`)
    https://github.com/mrmn2/PdfDing/security/advisories/GHSA-jjv3-jrv3-8r2g

26. Broken Access Control (IDOR) - PDF Upload Lets Any User Write Into Another User's Collection
    https://github.com/mrmn2/PdfDing/security/advisories/GHSA-q4p5-xx8j-5xwc

</details>


<summary><strong>⏳ Submitted Reports Under Review</strong></summary>

The following vulnerabilities have been responsibly reported to the respective maintainers and are currently undergoing coordinated disclosure. These advisories are **not yet public** and are accessible only to repository maintainers and the reporter until publication.

- **BentoPDF** — SSRF in `cors-proxy-worker.js` via DNS-based hostname allowlist bypass.  
  https://github.com/alam00000/bentopdf/security/advisories/GHSA-5xjf-rr5x-pcfj

- **InvoicePlane** — Password reset token uses a non-constant-time comparison instead of `hash_equals()`.  
  https://github.com/InvoicePlane/InvoicePlane/security/advisories/GHSA-wcqc-qqv5-65ph

- **InvoicePlane** — Guest invoice/quote access keys and CRON authentication key are generated using a non-cryptographic PRNG.  
  https://github.com/InvoicePlane/InvoicePlane/security/advisories/GHSA-chqc-v432-8pj8

- **notesnook** — Unvalidated releaseTrack input and missing confirmation allow renderer-controlled forced app relaunch and update-channel corruption
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-jmvr-c9wq-x6vx

- **notesnook** — Session-wide permission request handler silently auto-grants nearly all sensitive permissions (camera, microphone, clipboard, notifications) with no user prompt
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-2w7p-6rr7-pqgv

- **Outline** -  Per-IP Share-Subscription Creation Limit Can Be Bypassed Indefinitely via the Stale-Unconfirmed Resend Path
  https://github.com/outline/outline/security/advisories/GHSA-px83-2m6m-7frj

- **gravCMS** - Unescaped [lorem] and [details] shortcode parameters allow stored XSS in Shortcode Core
  https://github.com/getgrav/grav/security/advisories/GHSA-hvm8-wx3f-j774

 - **gravCMS** - Stored XSS via username/display name: tHtml() interpolates untrusted values into a template before markdown-parsing it, and usernames are not restricted against HTML metacharacters
   https://github.com/getgrav/grav/security/advisories/GHSA-96xm-c5hr-59rx

- **gravCMS** - Unsanitized marked.js output injected via {@html} in MarkdownEditor and MarkdownModal, javascript: URI XSS, one path reachable via third-party plugin/theme changelogs with no site access required
  https://github.com/getgrav/grav/security/advisories/GHSA-752r-88j4-vxm3
</details>


## Responsible Disclosure

I follow responsible disclosure practices and work directly with maintainers to ensure vulnerabilities are remediated before public disclosure.

This repository contains **only publicly available advisories and CVEs**. Vulnerabilities that are still under review are listed only as high-level report titles until coordinated disclosure is complete.

### Statistics

- **Public Advisories:** 26
- **Assigned CVEs:** Updating soon
- **Reports Under Review:** 20

_Last updated: August 2026_
