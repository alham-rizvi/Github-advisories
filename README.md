# Public Archive of Security Research & Responsible Disclosures

Welcome to my public archive of security research and responsible disclosures.

This repository contains:

- Assigned CVEs
- Public Security Advisories
- Reports Under Review

> [!NOTE]
> Reports under coordinated disclosure are **not** published until the vendor has released a fix or the advisory has been made public.
> Technical details and proof‑of‑concepts are intentionally withheld until the disclosure process is complete.


## 🛡️ Assigned CVEs

1. HTTP Basic Auth path in `CheckAuth()` bypasses the workspace access‑code CAPTCHA/lockout, allowing unthrottled remote brute‑force of the admin credential.
https://www.cve.org/CVERecord?id=CVE-2026-73046

2. Unthrottled brute-force of per-notebook Publish password via /api/filetree/authFilePublishAccess
   https://www.cve.org/CVERecord?id=CVE-2026-73045

3. Unthrottled brute-force of `Conf.Api.Token` via header/query auth in `CheckAuth()`, allowing unlimited automated guessing of a weakened API admin token
   https://www.cve.org/CVERecord?id=CVE-2026-73056

4. Session-cookie authentication branch of `CheckAuth()` has no Origin/Referer validation and the session cookie sets no explicit `SameSite` attribute, leaving CSRF protection entirely dependent on undocumented browser defaults
   https://www.cve.org/CVERecord?id=CVE-2026-74867

5. Unthrottled brute-force of Publish Service Basic Auth accounts in `PublishServiceTransport.RoundTrip()`, allowing unlimited automated guessing of named publish-viewer passwords on a separate, unauthenticated-by-default port
   https://www.cve.org/CVERecord?id=CVE-2026-74868

6. Unescaped workspace path concatenated into a UAC-elevated command line allows local privilege escalation via the bundled elevator.exe helper
   https://www.cve.org/CVERecord?id=CVE-2026-74801

7. Stored XSS via arbitrary-file assets served same-origin without Content-Disposition or X-Content-Type-Options, escalating to full kernel API access
   https://www.cve.org/CVERecord?id=CVE-2026-74800

8. Go net/http/pprof debug endpoints, including heap dumps, are registered fully unauthenticated whenever --mode is not exactly "prod", exposing in-memory secrets (AI provider API keys, AccessAuthCode) with no corresponding warning on the flag ```
   https://www.cve.org/CVERecord?id=CVE-2026-74799

9. Path Traversal in MCP tool database_clean (RemoveUnusedAttributeView) leads to Arbitrary File Read (via history copy)
    https://www.cve.org/CVERecord?id=CVE-2026-74899

10. Arbitrary File Deletion, missed by the recent GHSA-7hm9-v7vf-7g4w fix
    https://www.cve.org/CVERecord?id=CVE-2026-74798

11. Unauthenticated Path Traversal via Missing Directory-Boundary Check in `plugin-asset-map.php` Static Asset Server (`index.php`)
    https://www.cve.org/CVERecord?id=CVE-2026-74907

12. Six publish-mode reader-facing endpoints filter results using the "invisible" list instead of the "disabled" (forbidden) list, leaking content from notebooks/documents an admin explicitly disabled from publishing (update: eight endpoints confirmed, see body)
    https://www.cve.org/CVERecord?id=CVE-2026-74906

13. 17 block metadata/content endpoints in kernel/api/block.go (getRefText, getBlockBreadcrumb, checkBlockExist, and 14 others) have zero publish-access filtering, reachable by anonymous publish-mode readers
    https://www.cve.org/CVERecord?id=CVE-2026-74904

14. XSS-to-RCE via malicious filename in the upload/drag-drop validation flow (app/src/protyle/upload/index.ts), reflected unescaped into showMessage's insertAdjacentHTML sink
    https://www.cve.org/CVERecord?id=CVE-2026-74902

15. Zero-click XSS-to-RCE via unescaped block name/alias/memo in the "((" block-reference autocomplete hint popup (app/src/protyle/hint/extend.ts), fires on render with no user interaction beyond typing a reference
    https://www.cve.org/CVERecord?id=CVE-2026-75916

16. Attribute-breakout XSS-to-RCE via unescaped document bookmark/alias/memo/name fields in the "move/link to" file-tree picker's tooltip (app/src/util/pathName.ts), triggered by hovering
    https://www.cve.org/CVERecord?id=CVE-2026-75917

17. SiYuan before v3.7.4 Path Traversal via packageName
    https://www.cve.org/CVERecord?id=CVE-2026-77086

18. SiYuan before v3.8.0 Secret Exfiltration via http_request URL
    https://www.cve.org/CVERecord?id=CVE-2026-59809

19. SiYuan before v3.8.0 Incomplete Path Blocklist via MCP file tool
    https://www.cve.org/CVERecord?id=CVE-2026-60083

20. SiYuan before v3.7.4 Arbitrary File Deletion via removeTemplate
   https://www.cve.org/CVERecord?id=CVE-2026-60084

21.  SiYuan before v3.7.4 Plugin Overwrite via Bazaar Install
    https://www.cve.org/CVERecord?id=CVE-2026-62204

22. Grav before 2.0.16 Information Disclosure via Twig Sandbox
    https://www.cve.org/CVERecord?id=CVE-2026-76846

23. Grav before 2.0.16 Information Disclosure via offsetGet
   https://www.cve.org/CVERecord?id=CVE-2026-76839

24. Grav CMS before 2.0.16 Origin Validation Bypass via Referer
   https://www.cve.org/CVERecord?id=CVE-2026-72702

25. Grav CMS before 2.0.16 Timing Attack via verifyNonce
   https://www.cve.org/CVERecord?id=CVE-2026-72702

26. Grav before 3.9.1 Timing Attack via Non-Constant-Time Token Comparison
   https://www.cve.org/CVERecord?id=CVE-2026-72700

27. Grav Login Plugin before 3.9.1 Email Enumeration via Registration
    https://www.cve.org/CVERecord?id=CVE-2026-72699

28. Grav CMS before 2.0.16 Information Disclosure via Twig Sandbox Bypass
   https://www.cve.org/CVERecord?id=CVE-2026-72698

29. Grav CMS before 2.0.16 Path Traversal via media_directory
   https://www.cve.org/CVERecord?id=CVE-2026-72697

30. Grav CMS before 2.0.16 Symlink Following via createLockFile
   https://www.cve.org/CVERecord?id=CVE-2026-72696

31. Grav Login Plugin before 1.0.16 Privilege Escalation via Unlock
   https://www.cve.org/CVERecord?id=CVE-2026-56710

32. Grav before 3.9.2 Host Header Injection via sendInvitationEmail
   https://www.cve.org/CVERecord?id=CVE-2026-56709

33. Grav API Plugin before 1.0.16 SSRF via DNS Rebinding
   https://www.cve.org/CVERecord?id=CVE-2026-56708

34. Grav Flex Objects 1.4.0 through 1.4.7 Authorization Bypass via Shortcode
   https://www.cve.org/CVERecord?id=CVE-2026-56707

35. SSRF in cors-proxy-worker.js via DNS-based hostname allowlist bypass [CVE-2026-77581]
   https://github.com/alam00000/bentopdf/security/advisories/GHSA-5xjf-rr5x-pcfj#event-961386

36.  Grav before 1.0.18 Authentication Bypass via Scoped API Ke
    https://www.cve.org/CVERecord?id=CVE-2026-80203

37. Grav before 1.0.18 Authentication Bypass via Scoped API Key
    https://www.cve.org/CVERecord?id=CVE-2026-80204



## 📄 Public Security Advisories (63)

### SiYuan (37)

1. HTTP Basic Auth path in `CheckAuth()` bypasses the workspace access‑code CAPTCHA/lockout, allowing unthrottled remote brute‑force of the admin credential.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-w3xh-mmmh-r54v

2. Unthrottled brute‑force of per‑notebook Publish password via `/api/filetree/authFilePublishAccess`.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-v362-968x-gp2v

3. Unthrottled brute‑force of `Conf.Api.Token` via header/query authentication in `CheckAuth()`.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-m6w6-p7pc-fpg2

4. Unthrottled brute‑force of Publish Service Basic Authentication credentials.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-phg7-xcr4-q5wg

5. Session‑cookie authentication lacks Origin/Referer validation, resulting in CSRF exposure.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-hhm2-g993-p656

6. Cross‑Site WebSocket Hijacking on `/ws/network/proxy`.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-3cc2-h3v6-rqpq

7. Local privilege escalation via the bundled `elevator.exe` helper.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-vmp7-pm7g-ghcc

8. Stored XSS via arbitrary uploaded assets served from the same origin.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-mjf3-jwmf-r6wf

9. Unauthenticated `net/http/pprof` debug endpoints expose heap dumps and sensitive secrets.
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-9cqq-p2hw-mj3f

10. Path Traversal in MCP `database_clean` resulting in arbitrary file read and deletion.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-43jx-gxq4-jpjc

11. 17 block metadata/content endpoints in `kernel/api/block.go` (`getRefText`, `getBlockBreadcrumb`, `checkBlockExist`, and 14 others) have zero publish‑access filtering, reachable by anonymous publish‑mode readers.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-4vpg-gwqq-w44c#event-896806

12. Six publish‑mode reader‑facing endpoints filter results using the "invisible" list instead of the "disabled" (forbidden) list, leaking content from notebooks/documents an admin explicitly disabled from publishing (update: eight endpoints confirmed, see body).
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-48p5-pffc-5r9p#event-896511

13. Attribute‑breakout XSS‑to‑RCE via unescaped document bookmark/alias/memo/name fields in the "move/link to" file‑tree picker's tooltip (`app/src/util/pathName.ts`), triggered by hovering.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-jjq3-3942-x99r#event-898885

14. XSS‑to‑RCE via malicious filename in the upload/drag‑drop validation flow (`app/src/protyle/upload/index.ts`), reflected unescaped into `showMessage`'s `insertAdjacentHTML` sink.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-jf56-jrhq-j2qp#event-898039

15. Zero‑click XSS‑to‑RCE via unescaped block name/alias/memo in the `((` block‑reference autocomplete hint popup (`app/src/protyle/hint/extend.ts`), fires on render with no user interaction beyond typing a reference.
    https://github.com/fleetdm/fleet/security/advisories/GHSA-8rr8-84pc-6rpp

16. Path Traversal via unvalidated `packageName` across all 10 Bazaar install/uninstall endpoints, enabling arbitrary‑location file write (install) and arbitrary recursive directory deletion (uninstall).
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-wr4w-7vjm-mmx3

17. Unrestricted arbitrary file/directory deletion via `/api/search/removeTemplate`: the client‑supplied `path` parameter is passed directly to `os.RemoveAll` with no validation and no base‑directory restriction.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-w938-w7m4-qrj8

18. Missing consistency check between `packageName` and `repoURL`/`repoHash` in bazaar package install allows overwriting an existing, trusted plugin.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-rpx2-p6hp-x5gj

19. Secret placeholders in the `http_request` MCP tool are interpolated into the destination URL, enabling exfiltration of stored secrets to any attacker‑chosen host.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-853m-gvvm-6rvx

20. MCP file tool's blocklist is incomplete relative to the HTTP file API it claims to align with, exposing publish‑mode passwords and other sensitive workspace files.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-c8r8-95hg-mp34

21. Unescaped URL concatenation into `evaluateJavaScript` allows JavaScript injection via the `siyuan://` custom URL scheme.
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-7ffh-xpqv-mh58

22. Stored HTML/script injection via block name in hint, backlink, and breadcrumb rendering (regression of a prior fix, plus two unpatched sibling instances)
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-hf87-qh3j-3p88

23. Stored HTML/script injection via unescaped confirmDialog() content in bazaar package name handling
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-hvwp-43j9-4xgf

24. Publish-mode "invisible" content is not filtered from SQL embed blocks, attribute-view keys, or attribute-view backlinks
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-2pgf-jv7c-q7rx

25. /history/*path and /repo/diff/*path were not updated to use the new IsForbiddenAbsPath guard added in GHSA-c8r8-95hg-mp34, potentially exposing historical snapshots of data/.siyuan/publishAccess.json (plaintext publish passwords) and data/templates/*
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-3cm4-ccvw-6xr6

26. Sensitive workspace files (including conf.json secrets) readable via /api/template/render, inconsistent with the file API's own sensitive-path blocklist
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-9jfx-rc58-h23j

27. Unauthenticated unique request paths grow the global ControlConcurrency map without bound
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-p59v-3q54-qq55

28. Publish-auth throttling retains unique invalid-user keys without a bound
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-2x7j-p79w-7744

29. Publish-service Basic Auth creates unbounded persistent sessions
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-f4vj-ppp2-5hg4

30. Reader-role file API follows workspace assets symlinks outside the workspace
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-g7gf-v79m-jwrm

31. Unauthenticated UI-process registration retains attacker-controlled identifiers without bound
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-wv96-wmf5-xvj2

32. Linux MCP publish-access path guard bypass exposes publishAccess.json
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-mmgw-3mx9-cfwp

33. Reader-role undoState discloses private related document root IDs
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-6gf8-q9ch-w732

34. Reader can read files from an explicitly hidden notebook
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-8ggq-wq3f-vxrw

35. Reader Can Enumerate Private Attribute-View Key Definitions
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-j4qq-w6qx-6839

36. Published Attribute-View Rows Retain Hidden KeyValues
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-vc7j-5f5p-3x75

37. Reader can read files from an explicitly hidden notebook
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-8ggq-wq3f

38. Reader-capable /api/export/preview and /api/lute/copyStdMarkdown expand publish-disabled embeds before publication filtering
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-8wx4-fvqw-f5f8#event-972067

39. Publish-mode /api/search/fullTextSearchBlock discloses private-match counts despite returning no private blocks
    https://github.com/siyuan-note/siyuan/security/advisories/GHSA-g45v-hxvm-wccj#event-972055

40. Stored XSS in notebook configuration via unescaped template paths
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-v6wf-r2gr-rrgf#event-971554

41. Stored XSS in Search Assets result rows via unescaped asset filenames
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-qcw6-qm34-28h8#event-971539

42. Stored XSS in Bazaar package cards via unescaped iconURL metadata
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-rvcf-q4h8-w6c9#event-971526

43. Stored XSS in Search Asset Preview via Unescaped Indexed Asset Content
   https://github.com/siyuan-note/siyuan/security/advisories/GHSA-64gp-333q-mq6j#event-971501





### FileRise (2)

38. Trailing‑dot filename bypasses `UploadNamePolicy` strict‑mode extension restrictions.
    https://github.com/error311/FileRise/security/advisories/GHSA-8vmq-qjrm-m5f2

39. OnlyOffice callback silently skips JWT verification when the token is omitted.
    https://github.com/error311/FileRise/security/advisories/GHSA-wg9q-3w29-xv5q



### REDAXO (1)

40. Mediapool: Unsanitized SVG uploads are publicly reachable, enabling Stored XSS.
    https://github.com/redaxo/core/security/advisories/GHSA-2p3g-jr7p-qwwx



### Grav CMS (19)

41. Unauthenticated Path Traversal via missing directory‑boundary checks in `plugin-asset-map.php`.
    https://github.com/getgrav/grav/security/advisories/GHSA-4v9q-p283-qc2m

42. `onApiUserListRowAction` "unlock" handler does not check the target account's privilege level, letting an `api.users.write` account clear an admin.super account's lockout.
    https://github.com/getgrav/grav/security/advisories/GHSA-985r-mpj8-5rqw#event-910316

43. `media_directory()` Twig function allows filesystem path traversal and file content disclosure from sandboxed page content.
    https://github.com/getgrav/grav/security/advisories/GHSA-47ch-6w46-6xm7

44. `sendInvitationEmail()` is missing the untrusted‑Host‑header protection the other three security‑sensitive email links have, and `require_trusted_host` only enforces one of four flows.
    https://github.com/getgrav/grav/security/advisories/GHSA-69vf-mjxw-x79j

45. `Scheduler\Job::createLockFile()` follows symlinks in the world‑writable system temp directory (local symlink attack) [INFORMATIONAL].
    https://github.com/getgrav/grav/security/advisories/GHSA-q8w8-6cq5-j4h2

46. [flex‑objects] shortcode bypasses Flex directory ACL entirely, exposing any registered collection to anyone with page‑edit access.
    https://github.com/getgrav/grav/security/advisories/GHSA-x929-528m-vx2m#event-910540

47. Webhook delivery re‑resolves the target hostname after validating it, allowing the SSRF guard to be bypassed by DNS rebinding.
    https://github.com/getgrav/grav/security/advisories/GHSA-hq2v-cgw4-fw2w#event-910555

48. `config_denied_paths` default list omits `system`, exposing real secrets (e.g., `system.cache.redis.password`) via the Twig sandbox when `config_access` is enabled.
    https://github.com/getgrav/grav/security/advisories/GHSA-xjw5-q542-3vmr

49. `UserInterface` offsetGet/offsetExists allow‑listed in Twig sandbox let editor‑authored content leak `hashed_password` and 2FA secrets via `offsetGet()`.
    https://github.com/getgrav/grav/security/advisories/GHSA-3jhr-mxmx-38cx

50. Origin validation bypass in `Uri::referrer()` and `Pages::referrerRoute()` via unanchored prefix match.
    https://github.com/getgrav/grav/security/advisories/GHSA-9ccq-2jfg-qw33

51. Non‑constant‑time nonce comparison in `Utils::verifyNonce()` used for CSRF protection.
    https://github.com/getgrav/grav/security/advisories/GHSA-38p6-h87p-r4cg

52. Password reset and activation tokens compared with non‑constant‑time `===` instead of `hash_equals()`, and reset‑submission endpoint has no rate limiting.
    https://github.com/getgrav/grav/security/advisories/GHSA-x239-6jqx-5hjh

53. User registration discloses whether an email address is already registered (email enumeration).
    https://github.com/getgrav/grav/security/advisories/GHSA-crh8-xm27-j9g9

54. The `system`, `site`, and `theme` Twig variables bypass the content sandbox entirely and are never covered by `config_denied_paths`.
    https://github.com/getgrav/grav/security/advisories/GHSA-p597-crqc-m349

55. Scoped API key can act on super-admin accounts across seven user-management endpoints
    https://github.com/getgrav/grav/security/advisories/GHSA-94q7-vrqr-cx5v

56. Scoped API key can edit page permissions outside the scope it was granted
    https://github.com/getgrav/grav/security/advisories/GHSA-mcx6-4rvg-7r8v

57. **gravCMS** — Unescaped `[lorem]` and `[details]` shortcode parameters allow stored XSS in Shortcode Core.
  https://github.com/getgrav/grav/security/advisories/GHSA-hvm8-wx3f-j774

58. **gravCMS** — Stored XSS via username/display name: `tHtml()` interpolates untrusted values into a template before markdown‑parsing it, and usernames are not restricted against HTML metacharacters.
  https://github.com/getgrav/grav/security/advisories/GHSA-96xm-c5hr-59rx

59. **gravCMS** — Unsanitized `marked.js` output injected via `{@html}` in MarkdownEditor and MarkdownModal, `javascript:` URI XSS, one path reachable via third‑party plugin/theme changelogs with no site access required.
  https://github.com/getgrav/grav/security/advisories/GHSA-752r-88j4-vxm3


### note-mark (2)

60. Token exchange grant (RFC 8693) authenticates the caller based solely on whether their supplied `subject_token` is accepted by the OIDC provider's userinfo endpoint, with no check that the token was actually issued for note‑mark itself – allowing an access token obtained through any other client of the same identity provider to authenticate as that user here.
    https://github.com/enchant97/note-mark/security/advisories/GHSA-3j7j-3hq5-h3rp#event-910592

61. No audience check during RFC 8693 token exchange.
    https://github.com/enchant97/note-mark/security/advisories/GHSA-3j7j-3hq5-h3rp#event-917323



### PDFding (2)

62. Path Traversal / Arbitrary File Write via Malicious Object Keys in Backup Restore (`recover_data`).
    https://github.com/mrmn2/PdfDing/security/advisories/GHSA-jjv3-jrv3-8r2g

63. Broken Access Control (IDOR) – PDF Upload Lets Any User Write Into Another User's Collection.
    https://github.com/mrmn2/PdfDing/security/advisories/GHSA-q4p5-xx8j-5xwc

###BentoPDF

64. BentoPDF — SSRF in `cors-proxy-worker.js` via DNS‑based hostname allowlist bypass.
  https://github.com/alam00000/bentopdf/security/advisories/GHSA-5xjf-rr5x-pcfj



## ⏳ Submitted Reports Under Review

The following vulnerabilities have been responsibly reported to the respective maintainers and are currently undergoing coordinated disclosure. These advisories are **not yet public** and are accessible only to repository maintainers and the reporter until publication.


- **InvoicePlane** — Password reset token uses a non‑constant‑time comparison instead of `hash_equals()`.
  https://github.com/InvoicePlane/InvoicePlane/security/advisories/GHSA-wcqc-qqv5-65ph

- **InvoicePlane** — Guest invoice/quote access keys and CRON authentication key are generated using a non‑cryptographic PRNG.
  https://github.com/InvoicePlane/InvoicePlane/security/advisories/GHSA-chqc-v432-8pj8

- **notesnook** — Unvalidated `releaseTrack` input and missing confirmation allow renderer‑controlled forced app relaunch and update‑channel corruption.
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-jmvr-c9wq-x6vx

- **notesnook** — Session‑wide permission request handler silently auto‑grants nearly all sensitive permissions (camera, microphone, clipboard, notifications) with no user prompt.
  https://github.com/streetwriters/notesnook/security/advisories/GHSA-2w7p-6rr7-pqgv

- **Outline** — Per‑IP Share‑Subscription Creation Limit Can Be Bypassed Indefinitely via the Stale‑Unconfirmed Resend Path.
  https://github.com/outline/outline/security/advisories/GHSA-px83-2m6m-7frj


- **fleet** - Enabling "Allow IdP-initiated SSO login" globally disables SAML InResponseTo replay protection for all logins, not just IdP-initiated ones
  https://github.com/fleetdm/fleet/security/advisories/GHSA-8rr8-84pc-6rpp#advisory-comment-271185

- **Joplin** - Any website open in the browser can trigger and win Joplin's Web Clipper pairing dialog, stealing the permanent full-access API token, because the local server has no Origin/Referer restriction and the confirmation dialog shows no identifying information
  https://github.com/laurent22/joplin/security/advisories/GHSA-9728-v7ww-mxjv

- **Joplin** - Password reset accepts any valid per-user token including CSRF tokens and email-confirmation tokens because the token store has no purpose/type field, enabling full account takeover from a leaked CSRF token or a scanned confirmation-email link
  https://github.com/laurent22/joplin/security/advisories/GHSA-8qm8-mp6h-qf35

- **filebrowser** - Command WebSocket buffers unbounded messages before checking permissions
  https://github.com/filebrowser/filebrowser/security/advisories/GHSA-39cx-23x9-5c8p

- **FileRise** - Authenticated users could submit forms to unauthorized FileRise portals
   https://github.com/error311/FileRise/security/advisories/GHSA-rqff-5vqx-7m8h

- **FileRise** - FileRise Pro portal listing exposed other users' file metadata to read-own users
  https://github.com/error311/FileRise/security/advisories/GHSA-vxhj-g95m-45wx#advisory-comment-282109


## Responsible Disclosure

I follow responsible disclosure practices and work directly with maintainers to ensure vulnerabilities are remediated before public disclosure.

This repository contains **only publicly available advisories and CVEs**. Vulnerabilities that are still under review are listed only as high‑level report titles until coordinated disclosure is complete.

### Statistics

- **Public Advisories:** 63
- **Assigned CVEs:** Updating soon
- **Reports Under Review:** 9

*Last updated: August 2026*
