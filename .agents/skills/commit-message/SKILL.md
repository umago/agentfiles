---
name: commit-message
description: Generates a clear, concise, and structured Git commit message.
---

## 1. Output Format

```
<subject line>

[optional body]
```

Output only the commit message — no explanation, no commentary.

## 2. Rules

**Subject line:**
- 50 chars or fewer (72 hard max)
- Imperative mood: completes *"If applied, this commit will ___"*
- Capitalized, no trailing period

**Body (only when the subject alone doesn't answer "why was this necessary?"):**
- Separated from subject by a blank line
- Wrapped at 72 chars
- Explains *what* and *why*, not *how* — the code shows how

## 3. Examples

```
Fix null pointer in user session cleanup
```

```
Replace MD5 with SHA-256 for password hashing

MD5 is cryptographically broken and flagged in our security audit.
SHA-256 is the current standard and supported by the existing
crypto library with no additional dependencies.
```

## 4. Anti-patterns to avoid
- Past tense: "Fixed bug" → "Fix bug"
- Vague: "Minor changes", "WIP", "Stuff" → "Handle empty state in search results"
- Restating the filename: "Update auth.js" → "Redirect unauthenticated users to login"
- Body that explains *how*: "Replaced forEach with filter and map" → "Eliminates intermediate mutation that caused stale state in concurrent renders"
